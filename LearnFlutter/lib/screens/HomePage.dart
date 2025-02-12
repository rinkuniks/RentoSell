import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learnflutter/Constants/Constants.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
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
              options: CarouselOptions(height: kIsWeb ? Dimens.threeHundred :
              Dimens.twoHundred),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
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
            SizedBox(height: Dimens.twelve),
            midSection(),
            SizedBox(height: Dimens.twelve),
            bottomSection(),
            SizedBox(height: Dimens.twelve),
            popularCities(),
          ],
        ),
      ),
    );
  }
}

Widget topSection() {
  return Container(
    margin: const EdgeInsets.all(Dimens.twelve),
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
          style: TextStyle(color: Colors.black54, fontSize: Dimens.twelve),
          textAlign: TextAlign.start,
        ),
        Container(
          margin: const EdgeInsets.only(top: Dimens.twelve),
          height: kIsWeb ? Dimens.oneEighty : Dimens.oneTwenty,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, count) {
                return Card(
                  margin: const EdgeInsets.only(right: Dimens.twelve),
                  elevation: 4,
                  child: SizedBox(
                    width: kIsWeb ? Dimens.twoHundred : Dimens.hundred,
                    height: kIsWeb ? Dimens.oneFifty : Dimens.hundred,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Constants.WhatsAppImage,
                              width: Dimens.sixty,
                              height: Dimens.sixty),
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
    margin: const EdgeInsets.all(Dimens.twelve),
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
          style: TextStyle(color: Colors.black54, fontSize: Dimens.twelve),
          textAlign: TextAlign.start,
        ),
        Container(
          margin: const EdgeInsets.only(top: Dimens.twelve),
          height: Dimens.oneTwenty,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, count) {
                return Card(
                  elevation: 4,
                  child: SizedBox(
                    width: Dimens.hundred,
                    height: Dimens.hundred,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Constants.WhatsAppImage,
                              width: Dimens.sixty,
                              height: Dimens.sixty),
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
    margin: const EdgeInsets.all(Dimens.twelve),
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
          style: TextStyle(color: Colors.black54, fontSize: Dimens.twelve),
          textAlign: TextAlign.start,
        ),
        Container(
          margin: const EdgeInsets.only(top: Dimens.twelve),
          height: Dimens.oneTwenty,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, count) {
                return Card(
                  elevation: 4,
                  child: SizedBox(
                    width: Dimens.hundred,
                    height: Dimens.hundred,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Constants.WhatsAppImage,
                              width: Dimens.sixty,
                              height: Dimens.sixty),
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
    margin: const EdgeInsets.all(Dimens.twelve),
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
          style: TextStyle(color: Colors.black54, fontSize: Dimens.twelve),
          textAlign: TextAlign.start,
        ),
        Container(
          margin: const EdgeInsets.only(top: Dimens.twelve),
          height: Dimens.oneTwenty,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, count) {
                return SizedBox(
                  width: Dimens.hundred,
                  height: Dimens.hundred,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(Dimens.forty),
                          ),
                          child: Image.asset(Constants.WhatsAppImage,
                              width: Dimens.sixty,
                              height: Dimens.sixty),
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
