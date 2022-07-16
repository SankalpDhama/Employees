import 'package:flutter/material.dart';

class UpdateEmployeePage extends StatefulWidget {
  @override
  State<UpdateEmployeePage> createState() => _UpdateEmployeePageState();
}

class _UpdateEmployeePageState extends State<UpdateEmployeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'updateStudent',
          style: TextStyle(color: Colors.pink),
        ),
      ),
    );
  }
}
