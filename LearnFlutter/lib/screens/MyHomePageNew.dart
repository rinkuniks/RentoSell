import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:learnflutter/Constants/Dimens.dart';
import 'package:learnflutter/components/my_drawer.dart';
import 'package:learnflutter/screens/auth/auth_service.dart';
import 'package:learnflutter/screens/settings/settings_screen.dart';
import '../Constants/Constants.dart';
import 'DashBoard.dart';

class MyHomePageNew extends StatefulWidget {
  const MyHomePageNew({super.key});

  @override
  State<MyHomePageNew> createState() => _MyHomePageNewState();
}

class _MyHomePageNewState extends State<MyHomePageNew> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    DashBoard(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      drawer: MyDrawer(),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
          color: Colors.deepPurple.shade200,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
        Icon(Icons.home, color: Colors.white,),
        Icon(Icons.business, color: Colors.white,),
        Icon(Icons.school, color: Colors.white,),
        Icon(Icons.settings, color: Colors.white,),
      ]),
      body: CustomScrollView(
        slivers: [
          //Sliver App Bar
          SliverAppBar(
              backgroundColor: Colors.pink[300],
              expandedHeight: Dimens.twoHundred,
              floating: true,
              pinned: true,
              snap: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.deepPurple.shade200,
                ),
                title: Text(
                  "W E L C O M E",
                  style: TextStyle(color: Colors.white),
                ),
              )),
          //Sliver List
          SliverToBoxAdapter(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ],
      ),
    );
  }
}
