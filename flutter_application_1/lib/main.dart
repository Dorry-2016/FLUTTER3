// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: "Calculator",
    debugShowCheckedModeBanner: false,
    getPages: Routes.routes,
  ));
}
