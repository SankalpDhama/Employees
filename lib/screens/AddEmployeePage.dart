import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class addEmployeePage extends StatefulWidget {
  @override
  State<addEmployeePage> createState() => _addEmployeePageState();
}

class _addEmployeePageState extends State<addEmployeePage> {
  final _formKey = GlobalKey<FormState>();
  var name = "";
  int age = 0;
  var password = "";
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    passwordController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text('Add New Employee'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.pink,
                  ),
                  autofocus: false,
                  decoration: InputDecoration(
                    fillColor: Colors.purple,
                    labelText: 'name:',
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey[900],
                    ),
                    border: OutlineInputBorder(),
                  ),
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Name';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.pink,
                  ),
                  autofocus: false,
                  decoration: InputDecoration(
                    fillColor: Colors.purple,
                    labelText: 'age:',
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey[900],
                    ),
                    border: OutlineInputBorder(),
                  ),
                  controller: ageController,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Age';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.pink,
                  ),
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.purple,
                    labelText: 'password',
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey[900],
                    ),
                    border: OutlineInputBorder(),
                  ),
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter password';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            name = nameController.text;
                            age = ageController.text as int;
                            password = passwordController.text;
                            adduser();
                            clearText();
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                      ),
                      child: Text(
                        'SUBMIT',
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                      ),
                      child: Text('RESET'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
