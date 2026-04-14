import 'package:flutter/material.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Need to change the first Card as per requirement.
        Expanded(child: titleCard()),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Reusable_Card(
                  colour: Colors.redAccent,
                  carChild: IconContents(
                    icon: Icons.car_crash,
                    title_text: '1000',
                    sub_title: 'Action Required',
                  ),
                ),
              ),
              Expanded(
                child: Reusable_Card(
                  colour: Colors.orangeAccent,
                  carChild: IconContents(
                    icon: Icons.disc_full,
                    title_text: '200',
                    sub_title: 'Break Defects',
                  ),
                ),
              ),
              Expanded(
                child: Reusable_Card(
                  colour: Colors.orangeAccent,
                  carChild: IconContents(
                    icon: Icons.battery_alert_rounded,
                    title_text: '1000',
                    sub_title: 'Battery',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Reusable_Card(
                  colour: Colors.orange,
                  carChild: IconContents(
                    icon: Icons.battery_2_bar_outlined,
                    title_text: '100',
                    sub_title: 'Low Charging',
                  ),
                ),
              ),
              Expanded(
                child: Reusable_Card(
                  colour: Colors.lightBlueAccent,
                  carChild: IconContents(
                    icon: Icons.computer,
                    title_text: '300',
                    sub_title: 'Software Update',
                  ),
                ),
              ),
              Expanded(
                child: Reusable_Card(
                  colour: Colors.blue,
                  carChild: IconContents(
                    icon: Icons.oil_barrel,
                    title_text: '1000',
                    sub_title: 'Oil Change',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Reusable_Card(
                  colour: Colors.lightGreen,
                  carChild: IconContents(
                    icon: Icons.warehouse,
                    title_text: '800',
                    sub_title: 'In Warehouse',
                  ),
                ),
              ),
              Expanded(
                child: Reusable_Card(
                  colour: Colors.lightGreen,
                  carChild: IconContents(
                    icon: Icons.directions_boat_filled,
                    title_text: '1000',
                    sub_title: 'In Transit',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Reusable_Card(
            colour: Colors.lightGreen,
            carChild: IconContents(
              icon: Icons.disc_full,
              title_text: '1000',
              sub_title: 'All Cars',
            ),
          ),
        ),
      ],
    );
  }
}

class IconContents extends StatelessWidget {
  final String title_text;
  final String sub_title;
  final IconData icon;

  IconContents({
    required this.title_text,
    required this.sub_title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title_text,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 1),
        Icon(icon, size: 20),
        SizedBox(height: 1),
        Text(sub_title, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

class Reusable_Card extends StatelessWidget {
  final Color colour;
  final Widget carChild;

  Reusable_Card({required this.colour, required this.carChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: carChild,
    );
  }
}

class titleCard extends StatelessWidget {
  const titleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Hello, Phaneendra Sai Alluru',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          SizedBox(height: 1),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Volvo Cars India Pvt Ltd',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
