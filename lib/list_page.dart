import 'package:flutter/material.dart';

class vin_list extends StatefulWidget {
  const vin_list({super.key});

  @override
  State<vin_list> createState() => _vin_listState();
}

class _vin_listState extends State<vin_list> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: dealer_title_card(),
        ),
        Expanded(
          flex: 5,
          child: Reusable_card(),
        ),
      ],
    );
  }
}

class Reusable_card extends StatelessWidget {
  const Reusable_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border(
        //   top: BorderSide(color: Colors.black, width: 1),
        //   bottom: BorderSide(color: Colors.black, width: 1),
        // ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: vin_list_table(),
    );
  }
}

class dealer_title_card extends StatelessWidget {
  const dealer_title_card({
    super.key,
  });

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
            'Volvo Cars India Pvt Ltd',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
        SizedBox(height: 1),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'VOLVOIND560071',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ],
      ),
    );
  }
}

class vin_list_table extends StatelessWidget {
  const vin_list_table({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      // border: TableBorder(
      //   top: BorderSide(color: Colors.black, width: 1),
      //   bottom: BorderSide(color: Colors.black, width: 1),
      // ),
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(2),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration: const BoxDecoration(color: Colors.white12,
          border: Border(
            top: BorderSide(color: Colors.black, width: 1),
            bottom: BorderSide(color: Colors.black, width: 1),
          )),
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'VIN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Status',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'VINABCDEF123456',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: status_icons(),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'VINABCDEF123456',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
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
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'VINABCDEF123456',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
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
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'VINABCDEF123456',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
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
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'VINABCDEF123456',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
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
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'VINABCDEF123456',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
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
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'VINABCDEF123456',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
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
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'VINABCDEF123456',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
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
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'VINABCDEF123456',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
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
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'VINABCDEF123456',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
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
              ),
            ),
          ],
        ),

      ],
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
