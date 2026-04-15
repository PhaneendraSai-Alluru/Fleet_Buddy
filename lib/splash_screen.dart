import 'package:flutter/material.dart';
import 'input_page.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // margin: const EdgeInsets.all(8),
        // padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'V O L V O',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 2,),
            Text('Fleet Manager', style: TextStyle(fontSize: 22, color: Colors.black)),
            SizedBox(height:1),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, '/input_page');
            }, child: Icon(Icons.arrow_circle_right, size: 30,color: Colors.black,)) // Add Navigator here for login to first screen.
          ],
        ),
      ),
    );
  }
}
// Add app bars in respective screens not in mian screen.