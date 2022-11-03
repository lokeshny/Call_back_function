import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  final Function(String) callbackFunction;

  Screen2({ required this.callbackFunction});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  TextEditingController name = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Screen1 data"),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your name'),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    widget.callbackFunction(name.text);
                   Navigator.pop(context,name.text);
                  },
                  child: Text("Add name"))
            ],
          )),
    );
  }
}
