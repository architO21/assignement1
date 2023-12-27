import 'package:assignment1/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({super.key});

  @override
  State<AddVehicle> createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  String dropdownValue1 = 'BMW';
  String dropdownValue2 = 'Car';
  String fueltype = 'Petrol';
  final _formKey = GlobalKey<FormState>();
  TextEditingController Vehiclename = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool isvalidnumber(String value) {
      RegExp regExp =
          RegExp(r'^[A-Z]{2}[\\ -]?[0-9]{2}[\\ -]?[A-Z]{1,2}[\\ -]?[0-9]{4}$');
      return regExp.hasMatch(value);
    }

    return Scaffold(
        appBar: AppBar(title: const Text('Vehicle Form')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    controller: Vehiclename,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ('Vehicle number must not be empty');
                      }
                      if (!isvalidnumber(value)) {
                        return ('Enter valid vehicle number');
                      }
                      return null;
                    },
                    decoration:
                        const InputDecoration(labelText: 'Vehicle Number'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Vehicle Brand'),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButton<String>(
                      value: dropdownValue1,
                      items: <String>[
                        'BMW',
                        'AUDI',
                        'HYUNDAI',
                        'FERRARI',
                        'TOYOTA'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 20),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue1 = newValue!;
                        });
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Vehcile Type'),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButton<String>(
                      value: dropdownValue2,
                      items: <String>[
                        'Bike',
                        'Car',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 20),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue2 = newValue!;
                        });
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Fuel Type'),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButton<String>(
                      value: fueltype,
                      items: <String>[
                        'Petrol',
                        'Diesel',
                        'CNG',
                        'Electric',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 20),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          fueltype = newValue!;
                        });
                      }),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        // Add your button press logic here
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            '/home', // Replace with your named route
                            (route) => false,
                          );
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.add),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Submit')
                        ],
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
