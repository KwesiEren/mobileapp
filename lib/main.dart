import 'package:flutter/material.dart';
import 'package:mobileapp/pages/get_geopoints.dart';

import 'pages/profilescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProfileScrn(),
      routes: {'/getpoint': (context) => const GetPoints()},
    );
  }
}
