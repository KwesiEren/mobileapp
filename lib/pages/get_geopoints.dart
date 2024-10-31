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
    setState(() {
      isLoading = true; // Ensure loading indicator shows while fetching data
    });

    APIServices getData = APIServices();
    try {
      gottenGeoData = await getData.fetchGeoData();
      setState(() {
        gottenGeoData = currentData;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false; // Stop loading when there's an error
      });
    }
    return gottenGeoData;
  }

  // Method to refresh data when pull-to-refresh is triggered
  Future<void> refreshData() async {
    await getGeoData();
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
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.warning,
                        color: Colors.orange,
                        size: 48.0,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "No data available",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          setState(() {
                            isLoading =
                                true; // Show loading indicator before refreshing
                          });
                          refreshData();
                        },
                        child: const Card(
                          child: SizedBox(
                              height: 60,
                              width: 70,
                              child: Center(child: Text("Refresh"))),
                        ),
                      )
                    ],
                  ),
                )
              : RefreshIndicator(
                  onRefresh: refreshData, // Call refreshData on pull down
                  child: ListView.builder(
                    itemCount: gottenGeoData.length,
                    itemBuilder: (BuildContext context, int index) {
                      final geoDataCarrier = gottenGeoData[index];
                      return ListTile(
                        title: Text(geoDataCarrier.region ?? "No region"),
                      );
                    },
                  ),
                ),
    );
  }
}
