import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parking_ui/Widget/drawer.dart';

class FIND extends StatelessWidget {
  const FIND({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
       


      ),
      body: Container(alignment: Alignment.center,
      child: Text("Search for Parking Slots and Book on the Go ,on Google Maps"),
      
      
      ),
      
    );
  }
}