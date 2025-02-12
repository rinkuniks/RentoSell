import 'package:flutter/material.dart';
import 'package:learnflutter/Constants/Dimens.dart';

import '../Constants/Constants.dart';
import 'DashBoard.dart';

class MyHomePageNew extends StatefulWidget {

  MyHomePageNew({super.key});

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const Image(
              image: NetworkImage(Constants.StaticImage),
            ),
            Container(
              margin: const EdgeInsets.only(top: Dimens.twelve),
              child: Text(
                "Welcome \nNikhil Kumar Singh",
                style: TextStyle(
                  fontSize: Dimens.sixteen,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "+91-9999912345",
              textAlign: TextAlign.center,
            ),
            Text(
              "john.mclean@examplepetstore.com",
              textAlign: TextAlign.center,
            ),
            Container(
              margin: const EdgeInsets.only(
                  right: Dimens.twelve, left: Dimens.twelve),
              child: Divider(
                thickness: 1,
                color: Colors.black26,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(Dimens.eight),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    CircleAvatar(
                      radius: Dimens.twenty,
                      backgroundImage: NetworkImage(Constants.StaticImage),
                    ),
                    SizedBox(
                      width: Dimens.twelve,
                    ),
                    Text(
                      "Post Property",
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  SizedBox(
                    height: Dimens.twelve,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Image.asset(
                        height: Dimens.thirtyTwo,
                        width: Dimens.thirtyTwo,
                        Constants.WhatsAppImage),
                    SizedBox(
                      width: Dimens.twelve,
                    ),
                    Text(
                      "Post Property on whatsApp",
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  SizedBox(
                    height: Dimens.twelve,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    CircleAvatar(
                      radius: Dimens.twenty,
                      backgroundImage: NetworkImage(Constants.StaticImage),
                    ),
                    SizedBox(
                      width: Dimens.twelve,
                    ),
                    Text(
                      "Search Properties",
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  right: Dimens.twelve, left: Dimens.twelve),
              child: Divider(
                thickness: 1,
                color: Colors.black26,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(Dimens.twelve),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    CircleAvatar(
                      radius: Dimens.twenty,
                      backgroundImage: NetworkImage(Constants.StaticImage),
                    ),
                    SizedBox(
                      width: Dimens.twelve,
                    ),
                    Text(
                      "HomePage",
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  Divider(
                    thickness: 1,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    height: Dimens.twelve,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                            height: Dimens.twentyEight,
                            width: Dimens.twentyEight,
                            Constants.WhatsAppImage),
                        Image.asset(
                            height: Dimens.twentyEight,
                            width: Dimens.twentyEight,
                            Constants.InstaImage),
                        Image.asset(
                            height: Dimens.twentyEight,
                            width: Dimens.twentyEight,
                            Constants.YoutubeImage),
                      ]),
                  SizedBox(height: Dimens.twelve),
                  Divider(
                    thickness: 1,
                    color: Colors.black26,
                  ),
                  SizedBox(height: Dimens.twelve),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Image.asset(
                        height: Dimens.twentyEight,
                        width: Dimens.twentyEight,
                        Constants.Logout),
                    SizedBox(
                      width: Dimens.twelve,
                    ),
                    Text(
                      "Sign In / Sign Out",
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: CustomScrollView(
        slivers: [
          //Sliver App Bar
          SliverAppBar(
            backgroundColor: Colors.deepPurple[300],
            expandedHeight: Dimens.twoHundred,
            floating: true,
            pinned: true,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pink,
              ),
              title: Text("W E L C O M E", style: TextStyle(color: Colors.white),),
            )
          ),
          //Sliver List
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
