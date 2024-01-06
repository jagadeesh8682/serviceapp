import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:myapp/customwidget/appbar.dart';
import 'package:myapp/customwidget/bottomnav.dart';
import 'package:myapp/screens/selectVendor/movehouse1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Appbar(),
    );
  }
}
