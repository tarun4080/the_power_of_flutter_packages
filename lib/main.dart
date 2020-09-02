import 'package:flutter/material.dart';
import 'package:thepoweofflutterpackage/flutter_packages/multi_select_flutter.dart';
import 'package:thepoweofflutterpackage/flutter_packages/show_case_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The power of Flutter package',

      home: ShowCaseDemo(),
    );
  }
}

