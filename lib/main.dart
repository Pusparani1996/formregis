// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:html';

import 'package:flutter/material.dart';

import 'package:email_validator/email_validator.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Registration Form",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                )),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Name",
                    ),
                    validator: (name) {
                      if (name!.isEmpty ||
                          !RegExp(r'^[a-zA-Z ]*$').hasMatch(name)) {
                        return "Enter valid name ";
                      } else
                        return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email Address",
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.blue,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: const [AutofillHints.email],
                    validator: (email) {
                      if (email!.isEmpty ||
                          !RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                              .hasMatch(email)) {
                        return "enter valid email ";
                      } else
                        return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Country",
                      prefixIcon: Icon(
                        Icons.location_on_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    validator: (country) {
                      if (country!.isEmpty ||
                          !RegExp(r'^[a-z A-Z 0-9] +$').hasMatch(country)) {
                        return "Enter correct country ";
                      } else
                        return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Phone Number",
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Colors.blue,
                      ),
                    ),
                    validator: (phone) {
                      if (phone!.isEmpty ||
                          !RegExp(r'^\d{10}').hasMatch(phone)) {
                        return "Enter valid phone number ";
                      } else
                        return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock,color: Colors.blue,)
                    ),
                    obscureText: true,
                    validator: (password) {
                      if (password!.isEmpty ||
                          !RegExp(r'^[a-zA-Z0-9]*$').hasMatch(password)) {
                        return "enter valid email ";
                      } else
                        return null;
                    },
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("I accept terms & condition")],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue),
                    child: ElevatedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {}
                        },
                        child: const Text("Create Account")),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
