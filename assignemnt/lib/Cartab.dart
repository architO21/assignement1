import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'Vehicles.dart';

class Car extends StatefulWidget {
  const Car({super.key});

  get Cardetails => null;

  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    List<AppImage> Cardetails = images
        .where((Car) => Car.Vehicle_Type == "Car" && (Car.toshow == true))
        .toList();
    _deleteCard(int index) {
      setState(() {
        Cardetails[index].toshow = false;
      });
    }

    return Scaffold(
      body: ListView.builder(
        itemCount: Cardetails.length,
        itemBuilder: (context, index) {
          // Assuming AppImage has getters for vehicleNo, brandName, vehicleType, fuelType
          AppImage bike = Cardetails[index];

          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Vehicle No: ${bike.VehicleNo}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Brand: ${bike.BrandName}'),
                  Text('Vehicle Type: ${bike.Vehicle_Type}'),
                  Text('Fuel Type: ${bike.FuelType}'),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  _deleteCard(index);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
