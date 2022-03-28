import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import 'package:parking_ui/Models/home.dart';
import 'package:parking_ui/Models/find.dart';
import 'package:parking_ui/Widget/setting.dart';

void main() {
  runApp(Mydrawer());
}

// class _MyAppState extends State<MyApp> {
//   GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();
//   late String title;

//   @override
//   void initState() {
//     title = "Home";
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: SliderDrawer(
//             appBar: SliderAppBar(
//                 appBarColor: Colors.white,
//                 title: Text(title,
//                     style: const TextStyle(
//                         fontSize: 22, fontWeight: FontWeight.w700))),
//             key: _key,
//             sliderOpenSize: 179,
//             slider: _SliderView(
//               onItemClick: (title) {
//                 _key.currentState!.closeSlider();
//                 setState(() {
//                   this.title = title;
//                 });
//               },
//             ),
//             child: _AuthorList()),
//       ),
//     );
//   }
// }

class Mydrawer extends StatelessWidget {
  final Function(String)? onItemClick;

  const Mydrawer({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 60,
              // backgroundImage: AssetImage('assets/images/user_profile.jpg'),
              backgroundColor: Colors.grey[100],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Username',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'BalsamiqSans'),
          ),
          SizedBox(
            height: 20,
          ),
        ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home,color: Colors.black,),
            //icon:Icon(Icons.home),
            onTap:()=> Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => CAR())),
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home,color: Colors.black,),
            //icon:Icon(Icons.home),
            onTap:()=> Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => CAR())),
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home,color: Colors.black,),
            //icon:Icon(Icons.home),
            onTap:()=> Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => CAR())),
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home,color: Colors.black,),
            //icon:Icon(Icons.home),
            onTap:()=> Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => CAR())),
          ),
          // ListTile(
          //    title: Text('Register'),
          //    leading: Icon(Icons.app_registration  ,color: Colors.blue,),
          //   // iconData: Icons.arrow_back_ios,
          //    onTap: ()=> Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => Mylogin())),
          //  ),
        ],
      ),
    );
  }
}

//   List<Widget> pages = [
//     CAR(),
//     FIND(),
//     CAR(),
//     FIND(),
//     CAR(),
//     Mylogin(),



  

//   ];
// class _SliderMenuItem extends StatelessWidget {
//   final String title;
//   final IconData iconData;
//   final Function?  onTap;

//    _SliderMenuItem({
//     Key? key,
//     required this.title,
//     required this.iconData,
//     required this.onTap,

//     // required this.onTap
//   }) : super(key: key);


//   @override
//   Widget build(BuildContext context) {
    
//     return ListTile(
//       title: Text(title,
//           style: TextStyle(
//               color: Colors.black, fontFamily: 'BalsamiqSans_Regular')),
//       leading: Icon(iconData, color: Colors.black),
//       onTap:onTap!().toString(title),
//       // onTap: () => Navigator.push(
//       //         context, MaterialPageRoute(builder: (context) => pages[])),
          
//     );
//   }
// }

// class _AuthorList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List<Data> dataList = [];
//     dataList.add(Data(Colors.amber, 'Amelia Brown',
//         'Life would be a great deal easier if dead things had the decency to remain dead.'));
//     dataList.add(Data(Colors.orange, 'Olivia Smith',
//         'That proves you are unusual," returned the Scarecrow'));
//     dataList.add(Data(Colors.deepOrange, 'Sophia Jones',
//         'Her name badge read: Hello! My name is DIE, DEMIGOD SCUM!'));
//     dataList.add(Data(Colors.red, 'Isabella Johnson',
//         'I am about as intimidating as a butterfly.'));
//     dataList.add(Data(Colors.purple, 'Emily Taylor',
//         'Never ask an elf for help; they might decide your better off dead, eh?'));
//     dataList.add(Data(Colors.green, 'Maya Thomas', 'Act first, explain later'));
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: ListView.separated(
//           scrollDirection: Axis.vertical,
//           //   physics: BouncingScrollPhysics(),
//           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           itemBuilder: (builder, index) {
//             return LimitedBox(
//               maxHeight: 150,
//               child: Container(
//                 decoration: new BoxDecoration(
//                     color: dataList[index].color,
//                     borderRadius: new BorderRadius.all(
//                       const Radius.circular(10.0),
//                     )),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.all(12),
//                       child: Text(
//                         dataList[index].name,
//                         style: TextStyle(
//                             fontFamily: 'BalsamiqSans_Blod',
//                             fontSize: 30,
//                             color: Colors.white),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Text(
//                         dataList[index].detail,
//                         style: TextStyle(
//                             fontFamily: 'BalsamiqSans_Regular',
//                             fontSize: 15,
//                             color: Colors.white),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             );
//           },
//           separatorBuilder: (builder, index) {
//             return Divider(
//               height: 10,
//               thickness: 0,
//             );
//           },
//           itemCount: dataList.length),
//     );
//   }
// }

// class Data {
//   MaterialColor color;
//   String name;
//   String detail;

//   Data(this.color, this.name, this.detail);
// }

// class ColoursHelper {
//   static Color blue() => Color(0xff5e6ceb);

//   static Color blueDark() => Color(0xff4D5DFB);
// }