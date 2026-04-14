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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Reusable_list_title_card(carChild: const SizedBox.shrink(),),
        ),
        Expanded(
          flex: 4,
          child: Reusable_list_title_card(carChild: vin_list())
        ),
      ],
    );
  }
}

class Reusable_list_title_card extends StatelessWidget {

  Reusable_list_title_card({ required this.carChild});

  final Widget carChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: carChild,
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
      border: TableBorder.all(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      // Adds visible grid lines
      children: [
        const TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "VIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text("ABCDEFGHIJKLMNOP1234"),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(Icons.car_crash),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(Icons.oil_barrel),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(Icons.computer),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(Icons.disc_full),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(Icons.computer),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
