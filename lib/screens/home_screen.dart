import 'package:flutter/material.dart';
import 'package:moodify/components/camera.dart';
import 'package:moodify/main.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: IconButton(
          icon: const Icon(Icons.camera_alt_outlined),
          onPressed: () {
            runApp(TakePictureScreen());
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) async =>  TakePictureScreen(camera: firstcamera,),
            //   ),
            // );
          },
        ),
      ),
    );
  }
}
