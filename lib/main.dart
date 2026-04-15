import 'package:fleet_buddy/input_page.dart';
import 'package:flutter/material.dart';
import 'list_page.dart';
import 'vin_detail_page.dart';
import 'splash_screen.dart';
import 'input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fleet Buddy',
      theme: ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/' : (context)=>splash_screen(),
        '/input_page': (context)=> screen1(),
        '/list_page' : (context)=> vin_list(),
        '/vin_details' : (context)=> OsmMapScreen(),
      },

      );
  }
}
