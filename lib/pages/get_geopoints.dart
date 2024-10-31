import 'package:flutter/material.dart';

import 'package:mobileapp/services/get_api.dart';

class GetPoints extends StatefulWidget {
  const GetPoints({super.key});

  @override
  State<GetPoints> createState() => _GetPointsState();
}

class _GetPointsState extends State<GetPoints> {
  List<dynamic> gottenGeoData = [];
  List<dynamic> currentData = [];
  bool isLoading = true; // To show loading indicator initially

  Future<List> getGeoData() async {
    APIServices getData = APIServices();
    try {
      gottenGeoData = await getData.fetchGeoData();
      setState(() {
        currentData = gottenGeoData;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false; // Stop loading when there's an error
      });
    }
    return gottenGeoData;
  }

  @override
  void initState() {
    super.initState();
    getGeoData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Points'),
        centerTitle: true,
      ),
      body: isLoading
          ? const Center(
              child:
                  CircularProgressIndicator(), // Show loading indicator while fetching
            )
          : gottenGeoData.isEmpty
              ? const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.warning,
                        color: Colors.orange,
                        size: 48.0,
                      ),
                      SizedBox(height: 16),
                      Text(
                        "No data available",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  itemCount: gottenGeoData.length,
                  itemBuilder: (BuildContext context, int index) {
                    final geoDataCarrier = gottenGeoData[index];
                    return ListTile(
                      title: Text(geoDataCarrier.region ?? "No region"),
                    );
                  },
                ),
    );
  }
}
