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
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'V O L V O',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 1,),
            Text('Fleet Manager', style: TextStyle(fontSize: 22)),
            SizedBox(height:1),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => screen1()));
            }, child: Icon(Icons.arrow_circle_right, size: 30,color: Colors.black,)) // Add Navigator here for login to first screen.
          ],
        ),
      ),
    );
  }
}
// Add app bars in respective screens not in mian screen.