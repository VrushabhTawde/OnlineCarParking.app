import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parking_ui/UserModels/notification.dart';
import 'package:parking_ui/Widget/drawer.dart';
import 'package:parking_ui/Widget/itemswiper.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:fluttericon/linecons_icons.dart';

class CAR extends StatefulWidget {
  const CAR({Key? key}) : super(key: key);

  @override
  State<CAR> createState() => _CARState();
}

class _CARState extends State<CAR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Hi,User",style:TextStyle(color:Colors.indigo.shade300)),
          centerTitle: true,
          leading: IconButton(
            onPressed: () { Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mydrawer()));
                    },
            icon: Icon(
              Icons.account_circle,
              color: Colors.indigo.shade200,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => notification()));
              },
              icon: Icon(Icons.notifications, color: Colors.indigo.shade200),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: MySwiper(),
            ),
      //       Container(
      //         child: Material(
      // elevation: 4.0,
      // borderRadius: BorderRadius.all(Radius.circular(6.0)),
      // child: Wrap( 
      //   direction: Axis.horizontal,                    
      //   children: <Widget>[
      //   IconButton(icon: Icon(Icons.add), onPressed: () {  },),        
      //   IconButton(icon: Icon(Icons.add), onPressed: () {  },),         
      //   IconButton(icon: Icon(Icons.add), onPressed: () {  },),      
      //   IconButton(icon: Icon(Icons.add), onPressed: () {  },),      
      //   IconButton(icon: Icon(Icons.add), onPressed: () {  },),      
      //   ],
      // ),

      //       ),
      //    
      //   ),
      Text("Services",style:TextStyle(color:Colors.black,fontWeight:FontWeight.w600,fontSize:22)),
      SizedBox(
                  
                  height:15,
                ),
      Wrap(
        direction: Axis.horizontal,
     
              children: <Widget>[
                SizedBox(
                  
                  width:35,
                ),

                ButtonTheme(
                 // borderRadius: BorderRadius.all(Radius.circular(20)),
                 shape: RoundedRectangleBorder(
          side:new  BorderSide(
            color: Colors.indigo.shade100,
            ), 
          borderRadius: new BorderRadius.all(new Radius.circular(4))
          ),
          //color: Color(0xFF2A8068)
          height:60.0,
          minWidth: 70.0,
                  
                  child: RaisedButton(
                    color: Colors.indigo.shade50,
                    onPressed: () {},
                    //borderRadius: BorderRadius.all(Radius.circular(16)),
                    child:Icon(
      Icons.favorite,
      color: Colors.indigo.shade200,
      size: 24.0,
     
    ),
                  //  Text("serviceA",style: TextStyle(color:Colors.indigo.shade400 ),),
                  ),
                ),
                SizedBox(
                  
                  width:25,
                ),
                ButtonTheme(
                  shape: RoundedRectangleBorder(
          side:new  BorderSide(
            color: Colors.indigo.shade100,
            ), 
          borderRadius: new BorderRadius.all(new Radius.circular(4))
          ),
          //color: Color(0xFF2A8068)
          height:60.0,
          minWidth: 70.0,
                  child: RaisedButton(
                    
                    color: Colors.indigo.shade50,
                    onPressed: () {},
                    child: Icon(
      Icons.favorite,
      color: Colors.indigo.shade200,
      size: 24.0,
      
     
    ),
                  ),
                ),
                 SizedBox(
                  
                  width:25,
                ),
                ButtonTheme(
                shape: RoundedRectangleBorder(
          side:new  BorderSide(
            color: Colors.indigo.shade100,
            ), 
          borderRadius: new BorderRadius.all(new Radius.circular(4))
          ),
          //color: Color(0xFF2A8068)
          height:60.0,
          minWidth: 70.0,
                  child: RaisedButton(
                    color: Colors.indigo.shade50,
                    onPressed: () {},
                    child: Icon(
      Icons.favorite,
      color: Colors.indigo.shade200,
      size: 24.0,
     
    ),
                  ),
                ),

               ],
      ),
      
      SizedBox(
                  
                  height:45,
                ),

       Wrap(
        direction: Axis.horizontal,
     
              children: <Widget>[
                SizedBox(
                  
                  width:35,
                ),
                
                ButtonTheme(
                  shape: RoundedRectangleBorder(
          side:new  BorderSide(
            color: Colors.indigo.shade100,
            ), 
          borderRadius: new BorderRadius.all(new Radius.circular(4))
          ),
          //color: Color(0xFF2A8068)
          height:60.0,
          minWidth: 70.0,
                  
                  child: RaisedButton(
                    color: Colors.indigo.shade50,
                    onPressed: () {},
                    child: Icon(
      Icons.favorite,
      color: Colors.indigo.shade200,
      size: 24.0,
     
    ),
                  ),
                ),
                 SizedBox(
                  
                  width:25,
                ),
                ButtonTheme(
                  shape: RoundedRectangleBorder(
          side:new  BorderSide(
            color: Colors.indigo.shade100,
            ), 
          borderRadius: new BorderRadius.all(new Radius.circular(4))
          ),
          //color: Color(0xFF2A8068)
          height:60.0,
          minWidth: 70.0,
                  child: RaisedButton(
                    color: Colors.indigo.shade50,
                    onPressed: () {},
                    child: Icon(
      Icons.favorite,
      color: Colors.indigo.shade200,
      size: 24.0,
     
    ),
                  ),
                ),
                 SizedBox(
                  
                  width:25,
                ),
                ButtonTheme(
                  
                  shape: RoundedRectangleBorder(
          side:new  BorderSide(
            color: Colors.indigo.shade100,
            ), 
          borderRadius: new BorderRadius.all(new Radius.circular(4))
          ),
          //color: Color(0xFF2A8068)
          height:60.0,
          minWidth: 70.0,
                  child: RaisedButton(
                    color: Colors.indigo.shade50,
                    onPressed: () {},
                    child:Icon(
      Icons.favorite,
      color: Colors.indigo.shade200,
      size: 24.0,
     
    ),
                  ),
                ),
               ],
      ),
      SizedBox(
                
                  height:45,
                ),
      Text("Find Parking",style:TextStyle(color:Colors.black,fontWeight:FontWeight.w600,fontSize:22)),
      Container(
        
          height: 180,
          width: 500,
        //   decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/map.jpg"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
          
          child: Card(
            color: Colors.indigo.shade50,
            elevation: 8,
            shadowColor: Colors.grey,
            margin: EdgeInsets.all(20),
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.location_on, color: Colors.indigo),
              title: Text('Find Parking Slot'),
              subtitle: Text('got to maps'),
            ), 
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Maps'),
                  onPressed: () {/* ... */},
                ),
            
            


              ],

            ),
              
          ],
          
            ),
        ),
      ),
        SizedBox(
                  
                  height:85,
                ),
                
                
                // Enter Further.......
      
      
      
          ],
        ));
  }
}
