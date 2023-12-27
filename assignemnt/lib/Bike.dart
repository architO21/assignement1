import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'Vehicles.dart';



class Bike extends StatefulWidget {
  const Bike({super.key});

  get bikeDetails => null;

  @override
  State<Bike> createState() => _BikeState();
}

class _BikeState extends State<Bike> {
  @override
  Widget build(BuildContext context) 
  {
    List<AppImage> bikeDetails = images
    .where((bike) => (bike.Vehicle_Type == "Bike") && (bike.toshow == true))
    .toList();
    _deleteCard(int index) {
      setState(() {
        bikeDetails[index].toshow = false;
      });
    }

    return Scaffold(
      body: ListView.builder(
        itemCount: bikeDetails.length,
        itemBuilder: (context, index) {
          // Assuming AppImage has getters for vehicleNo, brandName, vehicleType, fuelType
          AppImage bike = bikeDetails[index];

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
