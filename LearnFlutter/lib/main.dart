import 'package:flutter/material.dart';
import 'package:learnflutter/screens/HomePage.dart';
import 'package:learnflutter/screens/PostProperty.dart';
import 'package:learnflutter/screens/SignUpPage.dart';
import 'Constants/Constants.dart';
import 'Constants/Dimens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome"), actions: [
        MaterialButton(
          onPressed: () {
            SnackBar(content: Text("Post Property Clicked !"));
            //Condition to check isLoggedin or not
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignUppage()),
            );
          },
          child: Text("Post Property"),
        ),
      ]),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const Image(
              image: NetworkImage(Constants.StaticImage),
            ),
            Container(
              margin: const EdgeInsets.only(top: Dimens.tweleve),
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
                  right: Dimens.tweleve, left: Dimens.tweleve),
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
                      width: Dimens.tweleve,
                    ),
                    Text(
                      "Post Property",
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  SizedBox(
                    height: Dimens.tweleve,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Image.asset(
                        height: Dimens.thirtyTwo,
                        width: Dimens.thirtyTwo,
                        Constants.WhatsAppImage),
                    SizedBox(
                      width: Dimens.tweleve,
                    ),
                    Text(
                      "Post Property on whatsApp",
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  SizedBox(
                    height: Dimens.tweleve,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    CircleAvatar(
                      radius: Dimens.twenty,
                      backgroundImage: NetworkImage(Constants.StaticImage),
                    ),
                    SizedBox(
                      width: Dimens.tweleve,
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
                  right: Dimens.tweleve, left: Dimens.tweleve),
              child: Divider(
                thickness: 1,
                color: Colors.black26,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(Dimens.tweleve),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    CircleAvatar(
                      radius: Dimens.twenty,
                      backgroundImage: NetworkImage(Constants.StaticImage),
                    ),
                    SizedBox(
                      width: Dimens.tweleve,
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
                    height: Dimens.tweleve,
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
                  SizedBox(height: Dimens.tweleve),
                  Divider(
                    thickness: 1,
                    color: Colors.black26,
                  ),
                  SizedBox(height: Dimens.tweleve),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Image.asset(
                        height: Dimens.twentyEight,
                        width: Dimens.twentyEight,
                        Constants.Logout),
                    SizedBox(
                      width: Dimens.tweleve,
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
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_rounded), label: "Projects"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: "Sell/Rent"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Shortlist"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        onTap: onItemTapped(_selectedIndex),
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.deepPurple,
        selectedLabelStyle: TextStyle(color: Colors.purple),
        unselectedLabelStyle: TextStyle(color: Colors.blueGrey),
      ),
      body: Center(
          child:
              Homepage()), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  onItemTapped(int index) {
    SnackBar(content: Text("Clicked $index !"));
    setState(() {
      _selectedIndex = index;
    });
  }
}
