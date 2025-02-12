import 'package:flutter/material.dart';
import 'package:learnflutter/Constants/Dimens.dart';

class MyHomePageNew extends StatelessWidget {
  const MyHomePageNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //Sliver App Bar
          SliverAppBar(
            backgroundColor: Colors.deepPurple[300],
            leading: Icon(Icons.menu),
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
              child: Container(
                height: 200,
                color: Colors.deepPurple,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.deepPurple,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.deepPurple,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.deepPurple,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.deepPurple,
              ),
            ),
          )
        ],
      ),
    );
  }
}
