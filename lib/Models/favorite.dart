import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parking_ui/Widget/drawer.dart';

class Fav extends StatefulWidget {
  const Fav({ Key? key }) : super(key: key);

  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
       title: Text("Instant Parking"),


      ),
      body: Container(alignment: Alignment.center,
      child: Text("Auto book Available Parking Slots Near You"),
      
      
      ),
      
    );
  }
}