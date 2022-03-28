import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parking_ui/Models/find.dart';
import 'package:parking_ui/googlemaps/map_screen.dart';

import '../Models/home.dart';
import '../Models/account.dart';
import '../Models/favorite.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Bottom Navigation Bar',
      home: BottomNav(),
    ),
  );
}

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BottomNav> {
  late PageController _pageController;
  int selectedIndex = 0;
  bool _colorful = false;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // SafeArea(
          //     child: SwitchListTile(
          //   title: const Text('Colorful Nav bar'),
          //   value: _colorful,
          //   onChanged: (bool value) {
          //     setState(() {
          //       _colorful = !_colorful;
          //     });
          //   },
          // )),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: _listOfWidget,
            ),
          ),
        ],
      ),
      bottomNavigationBar: _colorful
          ? SlidingClippedNavBar.colorful(
              backgroundColor: Colors.white,
              onButtonPressed: onButtonPressed,
              iconSize: 30,
              // activeColor: const Color(0xFF01579B),
              selectedIndex: selectedIndex,
              barItems: <BarItem>[
                BarItem(
                  icon: Icons.home_filled,
                  title: 'Home',
                  activeColor: Colors.blue,
                  inactiveColor: Colors.orange,
                ),
                BarItem(
                  icon: Icons.search_rounded,
                  title: 'Search for Parking Location',
                  activeColor: Colors.yellow,
                  inactiveColor: Colors.green,
                ),
                BarItem(
                  icon: Icons.bolt_rounded,
                  title: 'Instant',
                  activeColor: Colors.blue,
                  inactiveColor: Colors.red,
                ),
                BarItem(
                  icon: Icons.settings,
                  title: 'Setting',
                  activeColor: Colors.cyan,
                  inactiveColor: Colors.purple,
                ),
              ],
            )
          : SlidingClippedNavBar(
              backgroundColor: Colors.white,
              onButtonPressed: onButtonPressed,
              iconSize: 30,
              activeColor:Colors.indigo,
              selectedIndex: selectedIndex,
              barItems: <BarItem>[
                BarItem(
                  icon: Icons.home_filled,
                  title: 'Home',
                 
                ),
                BarItem(
                  icon: Icons.search_rounded,
                  title: 'Find',
                ),
                BarItem(
                  icon: Icons.bolt_rounded,
                  title: 'Instant',
                ),
                BarItem(
                  icon: Icons.settings,
                  title: 'Settings',
                ),
              ],
            ),
    );
  }
}

// icon size:24 for fontAwesomeIcons
// icons size: 30 for MaterialIcons

List<Widget> _listOfWidget = <Widget>[
  Container(
    alignment: Alignment.center,
    child: CAR(),
  ),
  Container(
    alignment: Alignment.center,
    child: MapScreen(),
  ),
  Container(
    alignment: Alignment.center,
    child: Fav(),
  ),
  Container(
    alignment: Alignment.center,
    child: Acc(),
  ),
];
