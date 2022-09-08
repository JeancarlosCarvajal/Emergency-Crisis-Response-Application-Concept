import 'package:flutter/material.dart'; 

import 'package:e_emergency_layout/src/pages/emergency_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: EmergencyPage(),
    );
  }
}