import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class OsmMapScreen extends StatelessWidget {
  const OsmMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppBar(title: Text('Fleet Buddy'),),
        body:Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(left: 10,bottom: 2),
                  child: Text('VINABCDEF123456', style: TextStyle(fontSize:16,color: Colors.white),)),
                  //SizedBox(height: 1),
                  Padding(padding: EdgeInsets.only(left:10),
                      child: Text('S 90', style: TextStyle(fontSize:14,color: Colors.white),
                      ),
                  ),
                ],
              )),
              Expanded(child: status_icons()),
            ]

          ),
        ),
        ),
        Expanded(flex:5,child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: FlutterMap(
              options: const MapOptions(
                initialCenter: LatLng(41.0887, -74.1438),
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName:'com.example.yourapp',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      point: const LatLng(41.0887, -74.1438),
                      width: 80,
                      height: 80,
                      child: const Icon(
                        Icons.location_pin,
                        size: 40,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                // RichAttributionWidget(attributions: [
                //   TextSourceAttribution('OpenStreetMap contributors')
                // ])
              ],
          ),
        ),
        ),
      ],
    ),),
    );
  }
}


class status_icons extends StatelessWidget {
  const status_icons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Icon(
            Icons.car_crash,
            color: Colors.green,
            size: 24,
          ),
        ),
        Expanded(
          child: Icon(
            Icons.battery_alert_rounded,
            color: Colors.red,
            size: 24,
          ),
        ),
        Expanded(
          child: Icon(
            Icons.battery_2_bar,
            color: Colors.orangeAccent,
            size: 24,
          ),
        ),
        Expanded(
          child: Icon(
            Icons.disc_full,
            color: Colors.red,
            size: 24,
          ),
        ),
        Expanded(
          child: Icon(
            Icons.computer,
            color: Colors.green,
            size: 24,
          ),
        ),
      ],
    );
  }
}