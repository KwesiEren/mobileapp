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

  Future<List> getGeoData() async {
    APIServices getData = APIServices();
    gottenGeoData = await getData.fetchGeoData();
    setState(() {
      currentData = gottenGeoData;
    });

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
      body: ListView.builder(
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
