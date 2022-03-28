// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parking_ui/UserModels/notification.dart';
import 'package:parking_ui/Widget/drawer.dart';

import 'direction.dart';
import 'direction_model.dart';

class MapScreen extends StatefulWidget {
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {

  Widget appBarTitle = new Text("Search here",style: TextStyle(color: Colors.indigo.shade200),);
  Icon actionIcon = new Icon(Icons.search);
  




  final Completer<GoogleMapController> _controllergoolemap = Completer();
  GoogleMapController? newGoogleMapController;

  TextEditingController _searchController = TextEditingController();

  final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(19.0760, 72.8777),
    zoom: 12.0,
  );
  

  DarkModegoogleMap() {
    newGoogleMapController!.setMapStyle('''
                    [
                      {
                        "elementType": "geometry",
                        "stylers": [
                          {
                            "color": "#242f3e"
                          }
                        ]
                      },
                      {
                        "elementType": "labels.text.fill",
                        "stylers": [
                          {
                            "color": "#746855"
                          }
                        ]
                      },
                      {
                        "elementType": "labels.text.stroke",
                        "stylers": [
                          {
                            "color": "#242f3e"
                          }
                        ]
                      },
                      {
                        "featureType": "administrative.locality",
                        "elementType": "labels.text.fill",
                        "stylers": [
                          {
                            "color": "#d59563"
                          }
                        ]
                      },
                      {
                        "featureType": "poi",
                        "elementType": "labels.text.fill",
                        "stylers": [
                          {
                            "color": "#d59563"
                          }
                        ]
                      },
                      {
                        "featureType": "poi.park",
                        "elementType": "geometry",
                        "stylers": [
                          {
                            "color": "#263c3f"
                          }
                        ]
                      },
                      {
                        "featureType": "poi.park",
                        "elementType": "labels.text.fill",
                        "stylers": [
                          {
                            "color": "#6b9a76"
                          }
                        ]
                      },
                      {
                        "featureType": "road",
                        "elementType": "geometry",
                        "stylers": [
                          {
                            "color": "#38414e"
                          }
                        ]
                      },
                      {
                        "featureType": "road",
                        "elementType": "geometry.stroke",
                        "stylers": [
                          {
                            "color": "#212a37"
                          }
                        ]
                      },
                      {
                        "featureType": "road",
                        "elementType": "labels.text.fill",
                        "stylers": [
                          {
                            "color": "#9ca5b3"
                          }
                        ]
                      },
                      {
                        "featureType": "road.highway",
                        "elementType": "geometry",
                        "stylers": [
                          {
                            "color": "#746855"
                          }
                        ]
                      },
                      {
                        "featureType": "road.highway",
                        "elementType": "geometry.stroke",
                        "stylers": [
                          {
                            "color": "#1f2835"
                          }
                        ]
                      },
                      {
                        "featureType": "road.highway",
                        "elementType": "labels.text.fill",
                        "stylers": [
                          {
                            "color": "#f3d19c"
                          }
                        ]
                      },
                      {
                        "featureType": "transit",
                        "elementType": "geometry",
                        "stylers": [
                          {
                            "color": "#2f3948"
                          }
                        ]
                      },
                      {
                        "featureType": "transit.station",
                        "elementType": "labels.text.fill",
                        "stylers": [
                          {
                            "color": "#d59563"
                          }
                        ]
                      },
                      {
                        "featureType": "water",
                        "elementType": "geometry",
                        "stylers": [
                          {
                            "color": "#17263c"
                          }
                        ]
                      },
                      {
                        "featureType": "water",
                        "elementType": "labels.text.fill",
                        "stylers": [
                          {
                            "color": "#515c6d"
                          }
                        ]
                      },
                      {
                        "featureType": "water",
                        "elementType": "labels.text.stroke",
                        "stylers": [
                          {
                            "color": "#17263c"
                          }
                        ]
                      }
                    ]
                ''');
  }

  // static final Marker _kGooglePlexMarker = Marker(
  //   markerId: MarkerId('_kGooglePlex'),
  //   infoWindow: InfoWindow(title: 'Destination'),
  //   icon: BitmapDescriptor.defaultMarker,
  //   position: LatLng(19.0760, 72.8777),
  // );

  // static final Marker _kFreeMaker = Marker(
  //   markerId: MarkerId('_kFreeMaker'),
  //   infoWindow: InfoWindow(title: 'Origin'),
  //   icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  //   position: LatLng(19.0237, 73.0404),
  // );
  // static final Polyline _kPolyline = Polyline(
  //   polylineId: PolylineId('_kPolyline'),
  //   points: [LatLng(19.0760, 72.8777), LatLng(19.0237, 73.0404)],
  //   width: 5,
  //   color: Colors.amber.shade300,
  // );

  // static final Polygon _kPolygon = new Polygon(
  //   polygonId: PolygonId('_kPolygon'),
  //   points: [
  //     // LatLng(19.0760, 72.8777),
  //     // LatLng(19.2183, 72.9781),
  //     // LatLng(19.2183, 72.9781),
  //     // LatLng(19.0237, 73.0404),
  //   ],
  //  // strokeWidth: 5,
  //  // fillColor: Colors.transparent,
  // );


  // TO ADD MARKERS
  Marker? _origin;
  Marker? _destination;
   Direction? _info;

@override
  void dispose() {
    newGoogleMapController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.white24,
        toolbarHeight: 47,
        

        centerTitle: true,
        title:appBarTitle,
        actions: <Widget>[
          new IconButton(
            icon: actionIcon,
            iconSize: 30,
            color:Colors.indigo.shade200,
            onPressed:(){
          setState(() {
                     if ( this.actionIcon.icon == Icons.search){
                      this.actionIcon = new Icon(Icons.close);
                      this.appBarTitle = new TextField(
                        style: new TextStyle(
                          color: Colors.indigo.shade200,

                        ),decoration: new InputDecoration(
                          prefixIcon: new Icon(Icons.search,color: Colors.indigo.shade200),
                          hintText: "Search here",
                          hintStyle: new TextStyle(color: Colors.indigo.shade200)
                        ),
                      );}
                      else {
                        this.actionIcon = new Icon(Icons.search);
                        this.appBarTitle = new Text("Search here",style: TextStyle(color: Colors.indigo.shade200),);
                      }


                    });
        } ,),
     
          // title:
          //     const Text('Google Maps', style: TextStyle(color: Colors.grey)),
         
        
            //for origin
            if (_origin != null)
              TextButton(
                onPressed: () => newGoogleMapController!.animateCamera(
                  CameraUpdate.newCameraPosition(CameraPosition(
                    target: _origin!.position,
                    zoom: 14.5,
                    tilt: 50.0,
                  )),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.green,
                  textStyle: const TextStyle(fontWeight: FontWeight.w600),
                ),
                child: const Text('ORIGIN'),
              ),
            if (_destination != null)
              TextButton(
                onPressed: () => newGoogleMapController!.animateCamera(
                  CameraUpdate.newCameraPosition(CameraPosition(
                    target: _destination!.position,
                    zoom: 14.5,
                    tilt: 50.0,
                  )),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.red,
                  textStyle: const TextStyle(fontWeight: FontWeight.w600),
                ),
                child: const Text('DEST'),
              ),
          ],
        ),
      body: Column(
        
        children: [
       
          // Row(
            
          //   children: [
          //     Expanded(
          //       flex: 1,
          //       child: TextFormField(
          //         textAlign: TextAlign.center,
          //         controller: _searchController,
          //         textCapitalization: TextCapitalization.words,
          //         decoration: InputDecoration(hintText: 'Search by City'),
          //         onChanged: (value) {
          //           print(value);
          //         },
          //       ),
          //     ),
          //     IconButton(
          //       onPressed: () {},
          //       icon: Icon(Icons.search),
          //     ),
          //   ],
          // ),
          Expanded(

            child: GoogleMap(
              mapType: MapType.normal,
              zoomControlsEnabled: false,
              myLocationEnabled: true,
             // markers: {_kGooglePlexMarker, _kFreeMaker},
              // polylines: {
              //  // _kPolyline,
              // },
              // polygons: {
              // //  _kPolygon,
              // },
              markers: {
                if (_origin != null) _origin!,
                if (_destination != null) _destination!,
              },
              
              onLongPress: _addMarker,
            
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controllergoolemap.complete(controller);
                newGoogleMapController = controller;
                // Dark mode
              //  DarkModegoogleMap();
              },
            ),
            

          ),
          
         
        ]
        
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo.shade100,
          foregroundColor: Colors.indigo.shade700,
          onPressed: () => newGoogleMapController!.animateCamera(
            _info != null
                ? CameraUpdate.newLatLngBounds(_info!.bounds, 100.0)
                : CameraUpdate.newCameraPosition(_kGooglePlex),
          ),
          child: const Icon(Icons.center_focus_strong),
        ),
        
        
    );
        
      
  
  }

  void _addMarker(LatLng pos) async {
    if (_origin == null || (_origin != null && _destination != null)) {
      //origin is not set OR Origin/Destination are both set
      //Set origin
      setState(() {
        _origin = Marker(
          markerId: const MarkerId('origin'),
          infoWindow: const InfoWindow(title: 'Origin'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          position: pos,
        );
        // Reset the destination state
        _destination = null;
        //Reset infoWindow
        _info = null;
      });
    } else {
      //origin is already setState
      // set destination
      setState(() {
        _destination = Marker(
          markerId: const MarkerId('destination'),
          infoWindow: const InfoWindow(title: 'Destination'),
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
          position: pos,
        );
      });

      final direction = await DirectionsRepository()
          .getDirections(origin: _origin!.position, destination: pos);
      setState(() => _info = direction);
    }
  }
}
