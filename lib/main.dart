import 'package:fleet_buddy/input_page.dart';
import 'package:flutter/material.dart';
import 'list_page.dart';
import 'vin_detail_page.dart';

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
      home: Scaffold(
        appBar: AppBar(title: Text('Fleet Buddy')),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        //body: SafeArea(child: screen1()
        //body: SafeArea(child: vin_list()),
        body: SafeArea(child: OsmMapScreen()),

      ),
    );
  }
}
