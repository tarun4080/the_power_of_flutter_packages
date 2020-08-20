import 'package:flutter/material.dart';
import 'package:thepoweofflutterpackage/flutter_packages/package_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The power of Flutter package',

      home: FlutterAppInfo(),
    );
  }
}

