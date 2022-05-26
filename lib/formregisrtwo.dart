import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 123, 194, 99),
          centerTitle: true,
        ),
        body: Form(
            child: Center(
          child: Column(
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(left: 50, right: 50, top: 40, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username/Email ID",
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
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
              const Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 30, left: 50, right: 50),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.lock_open_outlined,
                        color: Colors.black,
                      ),
                      labelText: "Password"),
                     
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.blue),
                  child: ElevatedButton(
                      onPressed: (() {
                        //Navigator.pop(context);
                      }),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
              ),
            ],
          ),
        )));
  }
}
