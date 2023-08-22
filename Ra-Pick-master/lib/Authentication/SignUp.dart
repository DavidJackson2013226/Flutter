import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapick/Authentication/CarInfoScreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();
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
          Form(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  style: TextStyle(),
                  decoration: InputDecoration(
                      labelText: 'Full Name',
                      hintText: 'Enter Name',
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
                  controller: email,
                  keyboardType: TextInputType.text,
                  style: TextStyle(),
                  decoration: InputDecoration(
                      labelText: ' Email',
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
                  height: 10,
                ),
                TextFormField(
                  controller: number,
                  keyboardType: TextInputType.phone,
                  style: TextStyle(),
                  decoration: InputDecoration(
                      labelText: 'Contact No:',
                      hintText: 'Enter  Mobile No',
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
                  controller: password,
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
                // TextFormField(
                //   controller: name,
                // ),

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
                      'Sign Up',
                      style: TextStyle(fontSize: 14),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignUp();
                      }));
                    },
                    child: Text("Already an User, LogIn"))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
