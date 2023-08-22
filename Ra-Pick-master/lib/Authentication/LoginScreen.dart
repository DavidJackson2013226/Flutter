import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapick/Authentication/CarInfoScreen.dart';
import 'package:rapick/Authentication/SignUp.dart';
import 'package:rapick/MainScreen/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/taxidriver.jpg',
            width: 200,
            height: 200,
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                    child: Column(
                  children: [
                    TextFormField(
                      controller: email,
                      style: TextStyle(),
                      decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter Email',
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
                    TextFormField(
                      controller: pass,
                      obscureText: true,
                      style: TextStyle(),
                      decoration: InputDecoration(
                          labelText: 'Password ',
                          hintText: 'Enter Password',
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
                      height: 80,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return MyHomePage(
                                  title: "Ra-Pick",
                                );
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent),
                            child: Text(
                              'LOGIN As Rider',
                              style: TextStyle(fontSize: 14),
                            )),
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
                              'LOGIN As Driver',
                              style: TextStyle(fontSize: 14),
                            ))
                      ],
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SignUp();
                          }));
                        },
                        child: Text("Not an Excisting User, Register here"))
                  ],
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}
