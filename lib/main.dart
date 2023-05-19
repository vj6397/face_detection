import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Home.dart';
import 'package:camera/camera.dart';

List<CameraDescription>? cameras;

Future<void> main() async{
  cameras=await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Face Detection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

