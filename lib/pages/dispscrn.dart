import 'package:flutter/material.dart';

class GetPoints extends StatefulWidget {
  const GetPoints({super.key});

  @override
  State<GetPoints> createState() => _GetPointsState();
}

class _GetPointsState extends State<GetPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Points'),
        centerTitle: true,
      ),
    );
  }
}
