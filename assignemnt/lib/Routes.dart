import 'package:assignment1/home.dart';
import 'package:flutter/material.dart';
import 'AddVehicle.dart'; // Import your screen files

class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/home': (context) => HomePage(),
      '/AddVehicle': (context) => AddVehicle(),
      // Add more routes as needed
    };
  }
}