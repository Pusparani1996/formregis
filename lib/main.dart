// ignore_for_file: curly_braces_in_flow_control_structures



import 'package:flutter/material.dart';


import 'formregisrtwo.dart';
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
  List<String>location=['America','Africa','Argentina','Australia','Brazil','Bhutan','Belgium','Califonia','Canada','China','Colombia','Europe','India','a','b','c','d','e','f','g'];
   List<String>state=['Assam','Arunachal Pradesh','Bihar','Bhopal','Chennai','Chandigarh','Delhi','Kolkata','kerala','Manipur','Shimla'];
  String? _selectedlocation;
   String? _selectedstate;
   bool _checkbox=false;
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
    
      ),
      body:SingleChildScrollView(
        child:    Container(
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
                
             
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(width: MediaQuery.of(context).size.width*0.40,
                      height: MediaQuery.of(context).size.height*0.07,
                      
                       
                          child: DropdownButton<String>(
                           menuMaxHeight: 300,
                           underline: Container(
                              height: 3,
                              color: Colors.blue
                            ),
          
                            hint:  const Text("please select country"),
                            isExpanded:true,
                            value: _selectedlocation,
                            onChanged: (newValue) {setState(() {
                              _selectedlocation = newValue!;
                            });},
                            items:location.map((location) {
                            return DropdownMenuItem<String>(
                            // ignore: sort_child_properties_last
                            child: Text(location),
                            value: location,
                            );
                            }).toList(),
               
                          ),
                      
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(right: 20),
                       child: SizedBox(width: MediaQuery.of(context).size.width*0.40,
                height: MediaQuery.of(context).size.height*0.07,
                  child: DropdownButton<String>(
                    menuMaxHeight: 300,
                    underline: Container(
                      height: 3,
                      color: Colors.blue,
                    ),
                    hint:  const Text("please select state"),
                    isExpanded:true,
                    value: _selectedstate,
                    onChanged: (newValue) {setState(() {
                        _selectedstate = newValue!;
                    });},
                    items:state.map((state) {
                    return DropdownMenuItem<String>(
                    value: state,
                    child: Text(state),
                    );
                    }).toList(),
               
                  ),
                ),
                     ),
                  ],
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
                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(value:_checkbox, onChanged:(value){
                      setState(() {
                      _checkbox =!_checkbox;
                    });}),
                     const Text("I accept terms & conditions")
                  ],
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
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => const LoginScreen() ),
                          ), );
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
      ),
      
   
    );
  }
}
