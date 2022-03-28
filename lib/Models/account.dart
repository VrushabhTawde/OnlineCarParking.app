import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parking_ui/Widget/setting.dart';

class Acc extends StatefulWidget {
  const Acc({ Key? key }) : super(key: key);

  @override
  State<Acc> createState() => _AccState();
}

class _AccState extends State<Acc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
       title: Text("Setting"),


      ),
      
   
    );
  }
}