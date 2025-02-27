import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../Constants/Constants.dart';
import '../Constants/Dimens.dart';
import '../screens/auth/auth_service.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(left: Dimens.twelve),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(child: Center(
                  child: const Image(
                    image: NetworkImage(Constants.staticImage),
                  ),
                )),
                Text(
                  "Welcome \nNikhil Kumar Singh",
                  style: TextStyle(
                    fontSize: Dimens.sixteen,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "+91-9999912345",
                  textAlign: TextAlign.center,
                ),
                Text(
                  "john.mclean@examplepetstore.com",
                  textAlign: TextAlign.center,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black26,
                ),
                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      CircleAvatar(
                        radius: Dimens.twenty,
                        backgroundImage: NetworkImage(Constants.staticImage),
                      ),
                      SizedBox(
                        width: Dimens.twelve,
                      ),
                      Text(
                        "P O S T P R O P E R T Y",
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    SizedBox(
                      height: Dimens.twelve,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                              height: Dimens.thirtyTwo,
                              width: Dimens.thirtyTwo,
                              Constants.whatsAppImage),
                          SizedBox(
                            width: Dimens.twelve,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "P O S T P R O P E R T Y \nO N W H A T A S P P",
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: Dimens.twelve,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      CircleAvatar(
                        radius: Dimens.twenty,
                        backgroundImage: NetworkImage(Constants.staticImage),
                      ),
                      SizedBox(
                        width: Dimens.twelve,
                      ),
                      Text(
                        "S E A R C H P R O P E R T I E S",
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black26,
                ),
                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      CircleAvatar(
                        radius: Dimens.twenty,
                        backgroundImage: NetworkImage(Constants.staticImage),
                      ),
                      SizedBox(
                        width: Dimens.twelve,
                      ),
                      Text(
                        "H O M E P A G E",
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
                              Constants.whatsAppImage),
                          Image.asset(
                              height: Dimens.twentyEight,
                              width: Dimens.twentyEight,
                              Constants.instagramImage),
                          Image.asset(
                              height: Dimens.twentyEight,
                              width: Dimens.twentyEight,
                              Constants.youtubeImage),
                        ]),
                    SizedBox(height: Dimens.twelve),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: Dimens.twenty),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                        height: Dimens.twentyEight,
                        width: Dimens.twentyEight,
                        Constants.logout),
                    SizedBox(
                      width: Dimens.twelve,
                    ),
                    GestureDetector(
                      onTap: () {
                        final auth = AuthService();
                        auth.signOut();
                      },
                      child: Text(
                        "L O G O U T",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
