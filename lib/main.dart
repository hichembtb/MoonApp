import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moon_pic/home.dart';
import 'package:moon_pic/takepicturescreen.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.black,
    ),
  );
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras[1];

  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        routes: {
          "camera": (context) => TakePictureScreen(camera: firstCamera),
        },
        home: const Home() //TakePictureScreen(
        // Pass the appropriate camera to the TakePictureScreen widget.
        //camera: firstCamera,
        //),
        ),
  );
}

// A screen that allows users to take a picture using a given camera.

// A widget that displays the picture taken by the user.

