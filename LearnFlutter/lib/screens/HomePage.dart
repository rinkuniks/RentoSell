import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learnflutter/Constants/Constants.dart';

import '../Constants/Dimens.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(Dimens.eight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 200.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: Dimens.four),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: Dimens.sixteen),
                        ));
                  },
                );
              }).toList(),
            ),
            Container(
              padding: EdgeInsets.all(Dimens.sixteen),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            topSection(),
            SizedBox(height: Dimens.tweleve),
            midSection(),
            SizedBox(height: Dimens.tweleve),
            bottomSection(),
            SizedBox(height: Dimens.tweleve),
            popularCities(),
          ],
        ),
      ),
    );
  }
}

Widget topSection() {
  return Container(
    margin: const EdgeInsets.all(Dimens.tweleve),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Get Started With",
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: Dimens.twenty,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
        Text(
          "Explore Real Estate options in top cities...",
          style: TextStyle(color: Colors.black54, fontSize: Dimens.tweleve),
          textAlign: TextAlign.start,
        ),
        Container(
          margin: const EdgeInsets.only(top: Dimens.tweleve),
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, count) {
                return Card(
                  elevation: 4,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Constants.WhatsAppImage,
                              width: 60,
                              height: 60),
                          SizedBox(height: Dimens.eight),
                          Text("One")
                        ]),
                  ),
                );
              }),
        )
      ],
    ),
  );
}

Widget midSection() {
  return Container(
    margin: const EdgeInsets.all(Dimens.tweleve),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Insights & Utilities",
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: Dimens.twenty,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
        Text(
          "Go from browsing to buying",
          style: TextStyle(color: Colors.black54, fontSize: Dimens.tweleve),
          textAlign: TextAlign.start,
        ),
        Container(
          margin: const EdgeInsets.only(top: Dimens.tweleve),
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, count) {
                return Card(
                  elevation: 4,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Constants.WhatsAppImage,
                              width: 60,
                              height: 60),
                          SizedBox(height: Dimens.eight),
                          Text("One")
                        ]),
                  ),
                );
              }),
        )
      ],
    ),
  );
}

Widget bottomSection() {
  return Container(
    margin: const EdgeInsets.all(Dimens.tweleve),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Get Started With",
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: Dimens.twenty,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
        Text(
          "Explore Real Estate options in top cities...",
          style: TextStyle(color: Colors.black54, fontSize: Dimens.tweleve),
          textAlign: TextAlign.start,
        ),
        Container(
          margin: const EdgeInsets.only(top: Dimens.tweleve),
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, count) {
                return Card(
                  elevation: 4,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Constants.WhatsAppImage,
                              width: 60,
                              height: 60),
                          SizedBox(height: Dimens.eight),
                          Text("One")
                        ]),
                  ),
                );
              }),
        )
      ],
    ),
  );
}

Widget popularCities() {
  return Container(
    margin: const EdgeInsets.all(Dimens.tweleve),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Explore Popular Cities",
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: Dimens.twenty,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
        Text(
          "Buy or rent properties in top cities",
          style: TextStyle(color: Colors.black54, fontSize: Dimens.tweleve),
          textAlign: TextAlign.start,
        ),
        Container(
          margin: const EdgeInsets.only(top: Dimens.tweleve),
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, count) {
                return SizedBox(
                  width: 100,
                  height: 100,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(Dimens.fourty),
                          ),
                          child: Image.asset(Constants.WhatsAppImage,
                              width: 60,
                              height: 60),
                        ),
                        SizedBox(height: Dimens.eight),
                        Text("One")
                      ]),
                );
              }),
        )
      ],
    ),
  );
}
