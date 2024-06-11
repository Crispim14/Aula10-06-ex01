import 'package:flutter/material.dart';
import 'dart:io' show Platform;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Identificando Sistema Operacional'),
        ),
        body: Center(
          child: OSImage(),
        ),
      ),
    );
  }
}

class OSImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String imagePath;

    if (Platform.isAndroid) {
      imagePath = 'assets/android.png';
    } else if (Platform.isWindows) {
      imagePath = 'assets/windows.png';
    } else {
      imagePath = 'assets/default.png';
    }

    return Image.asset(imagePath);
  }
}
