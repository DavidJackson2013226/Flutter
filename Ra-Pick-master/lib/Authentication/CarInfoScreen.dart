import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarInfoScreen extends StatefulWidget {
  const CarInfoScreen({Key? key}) : super(key: key);

  @override
  State<CarInfoScreen> createState() => _CarInfoScreenState();
}

class _CarInfoScreenState extends State<CarInfoScreen> {
  TextEditingController carModel = TextEditingController();
  TextEditingController carNumber = TextEditingController();
  TextEditingController carColor = TextEditingController();

  List<String> carTypeList = ["uber-x", "uber-go", "bike"];
  String? selectedCarType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/taxiPng.png',
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Car Details",
              style: TextStyle(fontSize: 23),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: carModel,
                    style: TextStyle(),
                    decoration: InputDecoration(
                        labelText: 'Car-Model',
                        hintText: 'Enter Car Model',
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(7)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        hintStyle: TextStyle(fontSize: 14),
                        labelStyle: TextStyle(fontSize: 14)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: carNumber,
                    keyboardType: TextInputType.text,
                    style: TextStyle(),
                    decoration: InputDecoration(
                        labelText: 'Car-No',
                        hintText: 'Enter Car Number',
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(7)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        hintStyle: TextStyle(fontSize: 14),
                        labelStyle: TextStyle(fontSize: 14)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: carColor,
                    keyboardType: TextInputType.phone,
                    style: TextStyle(),
                    decoration: InputDecoration(
                        labelText: 'Car-Color:',
                        hintText: 'Enter  Car Color',
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(7)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        hintStyle: TextStyle(fontSize: 14),
                        labelStyle: TextStyle(fontSize: 14)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  DropdownButton(
                    iconSize: 20,
                    icon: Icon(Icons.car_rental),
                    dropdownColor: Colors.white,
                    hint: const Text(""),
                    value: selectedCarType,
                    onChanged: (newValue) {
                      setState(() {
                        selectedCarType = newValue.toString();
                      });
                    },
                    items: carTypeList.map((car) {
                      return DropdownMenuItem(
                        child: Text(car),
                        value: car,
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CarInfoScreen();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent),
                      child: Text(
                        'Save',
                        style: TextStyle(fontSize: 14),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
