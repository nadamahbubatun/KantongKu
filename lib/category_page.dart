import 'package:aplikasikeuangan/category_page.dart';
import 'package:aplikasikeuangan/home_page.dart';
import 'package:flutter/material.dart';
import 'package:calendar_appbar/calendar_appbar.dart';

class category_page extends StatefulWidget {
  const category_page({super.key});

  @override
  State<category_page> createState() => _category_pageState();
}

class _category_pageState extends State<category_page> {
  bool isExpense = true;

  void openDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'add income',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'name'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text('save'))
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Switch(
                value: isExpense,
                onChanged: (bool value) {
                  setState(() {
                    isExpense = value;
                  });
                },
                inactiveTrackColor: Colors.blue[200],
                inactiveThumbColor: Colors.blue,
                activeColor: Colors.red,
              ),
              IconButton(
                onPressed: () {
                  openDialog();
                },
                icon: Icon(Icons.add),
              )
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              elevation: 10,
              child: ListTile(
                leading: (isExpense)
                    ? Icon(Icons.upload, color: Colors.red)
                    : Icon(Icons.download,
                        color: Colors.green), // Change the color as needed
                title: Text('sedekah'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                    SizedBox(width: 10),
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                  ],
                ),
              ),
            )),
        Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              elevation: 10,
              child: ListTile(
                leading: (isExpense)
                    ? Icon(Icons.upload, color: Colors.red)
                    : Icon(Icons.download,
                        color: Colors.green), // Change the color as needed
                title: Text('sedekah'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                    SizedBox(width: 10),
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                  ],
                ),
              ),
            )),
      ],
    ));
  }
}
