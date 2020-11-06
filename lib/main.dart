import 'package:flutter/material.dart';
import 'package:image_classify_app/splashscreen.dart';
//import 'package:image_picker/image_picker.dart';
//import 'package:tflite/tflite.dart';

import 'Camera.dart';
import 'Gallery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "Home",
      debugShowCheckedModeBanner: false,
      routes: {
        "Home": (context) => SplashScreen(),
        "Gallery": (context) => MyGallery(),
        "Camera": (context) => MyCamera(),
      },
    );
  }
}
