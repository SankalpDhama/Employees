import 'package:flutter/material.dart';
import 'AddEmployeePage.dart';
import 'ListPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Employees",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => addEmployeePage(),
                  ),
                ),
              },
              child: Icon(Icons.add, color: Colors.blueGrey[900]),
            ),
          ],
        ),
      ),
      body: ListPage(),
    );
  }
}
