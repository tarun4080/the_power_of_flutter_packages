import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class FlutterAppInfo extends StatefulWidget {


  @override
  _FlutterAppInfoState createState() => _FlutterAppInfoState();
}

class _FlutterAppInfoState extends State<FlutterAppInfo> {

  String appName,packageName,version,buildNumber;

  void getPackageInfo ()async{
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      appName = packageInfo.appName;
      packageName = packageInfo.packageName;
      version = packageInfo.version;
      buildNumber = packageInfo.buildNumber;
    });
  }



  @override
  Widget build(BuildContext context) {
    getPackageInfo();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("App Info"),
      ),
      body: appName != null?ListView(
        children: [
          ListTile(
            title: Text("App name : $appName"),
          ), ListTile(
            title: Text("App version : $version"),
          ),
          ListTile(
            title: Text("App package name : $packageName"),
          ), ListTile(
            title: Text("App Build number : $buildNumber"),
          )
        ],
      ):Center(
        child: CircularProgressIndicator(),
      )
    );
  }
}
