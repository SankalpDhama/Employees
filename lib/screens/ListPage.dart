import 'package:flutter/material.dart';

import 'UpdateStudentPage.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  deleteUser(id) {
    print('User delete $id');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          border: TableBorder.all(),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    color: Colors.blueGrey[900],
                    child: Center(
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.blueGrey[900],
                    child: Center(
                      child: Text(
                        'Age',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.blueGrey[900],
                    child: Center(
                      child: Text(
                        'Actions',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    child: Center(
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[900]),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        'Age',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[900]),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UpdateEmployeePage(),
                            ),
                          ),
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.blueGrey[900],
                        ),
                      ),
                      IconButton(
                        onPressed: () => {deleteUser(1)},
                        icon: Icon(
                          Icons.delete,
                          color: Colors.blueGrey[900],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
