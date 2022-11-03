



import 'package:flutter/material.dart';

import 'Screen2.dart';
import 'dart:developer';

void main() {
  runApp(MaterialApp(home: Screen1()));
}

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String name = " ";

  /*callback(varName) {
    setState(() {
      name = varName;
    });
  }*/

  _Screen1State();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Screen1 ",
            ),
          ),
        ),
        body: Column(children: [
          Container(
            width: double.maxFinite,
            height: 60,
            margin: EdgeInsets.only(top: 50, right: 20, left: 20),
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                "my name is- " +name,
              ),
            ),
          ),
          TextButton(
              onPressed: ()  {
                /*Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Screen2(value){
                return name = value;*/
              Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Screen2(callbackFunction: (varName) {
                            setState(() {
                            name = varName;
                            });
                            },)));
              /*  log(result);
                setState(() {
                  name = result;
                });*/
              },
              child: Text("data")),
        ]));
  }
}
