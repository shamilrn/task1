import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

   String? _selectedvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Task 1"),
      ),
      body: Center(
        child: DropdownButton(
          hint: Text("More Actions"),
          value: _selectedvalue,
          items:<String>['View', 'Edit', 'Send', 'Delete'].map((String value){
            return DropdownMenuItem<String>(
                value: value,
                child: Text(
                value,
                style: TextStyle(
                color: value == 'Delete' ? Colors.red : Colors.black,
            ),
            ),
            );
          }).toList(),
          onChanged: (String? newValue){
            setState(() {
              _selectedvalue = newValue!;
            });
          }),
      ),
    );
  }
}
