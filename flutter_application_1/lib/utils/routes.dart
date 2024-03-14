import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_application_1/views/calculator.dart';
import 'package:flutter_application_1/views/home.dart';
import 'package:get/get.dart';

class Routes {
  static var routes = [
    GetPage(name: "/login", page: () => Login()),
    GetPage(name: "/home", page: () => Home()),
    GetPage(name: "/calculator", page: () => Calculator()),
  ];
}
