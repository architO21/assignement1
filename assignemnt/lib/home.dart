import 'dart:html';
import 'package:assignment1/AddVehicle.dart';
import 'package:assignment1/Bike.dart';
import 'package:assignment1/Cartab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              title: const Text('Vehicle Select'),
              centerTitle: true,
              bottom: const TabBar(tabs: [
                Tab(
                  text: 'Car',
                  icon: Icon(Icons.directions_car),
                ),
                Tab(
                  text: 'Bike',
                  icon: Icon(Icons.directions_bike),
                )
              ]),
            ),
            body: Stack(
              children: [
                const TabBarView(children: [
                  Center(child: Car()),
                  Center(child: Bike()),
                ]),
                Positioned(
                  left: 16.0,
                  right: 16.0,
                  bottom: 30.0,
                  child: Container(
                    width: 10,
                    child: ElevatedButton(
                        onPressed: () {
                         Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/AddVehicle', // Replace with your named route
                    (route) => false, // Remove all existing routes
                  );
                          // Add your button press logic here
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.add),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Add Vehicle')
                          ],
                        )),
                  ),
                )
              ],
            )));
  }
}
