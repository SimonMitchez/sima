import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sima_app1/screens/Home/wallet.dart';
import 'package:sima_app1/screens/dashBoard.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //sideMenu

            Expanded(
              // Default flex = 1, taking 1/6 of the screen
              child: Drawer(
                backgroundColor: Color.fromRGBO(249, 199, 132, 1.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DrawerHeader(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/icons/dash.jpg',
                              scale: 100.0,
                            ),
                            Text('My Account'),
                          ],
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const WalletPage(),),);
                        },
                        horizontalTitleGap: 10.0,
                        leading: Icon(
                          FontAwesomeIcons.calendarDays,
                          weight: 20.0,
                        ),
                        title: Text('Appointments',
                            style: TextStyle(
                                color: Color.fromARGB(255, 233, 69, 211))),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const WalletPage(),),);
                        },
                        horizontalTitleGap: 10.0,
                        leading: Icon(
                          FontAwesomeIcons.database,
                          weight: 20.0,
                        ),
                        title: Text('Patient Records',
                            style: TextStyle(
                                color: Color.fromARGB(255, 233, 69, 211))),
                      ),
                      ListTile(
                        onTap: () {
                            Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const WalletPage(),),);
                        },
                        horizontalTitleGap: 10.0,
                        leading: Icon(
                          FontAwesomeIcons.video,
                          weight: 15.0,
                        ),
                        title: Text('Video Consultation',
                            style: TextStyle(
                                color: Color.fromARGB(255, 233, 69, 211))),
                      ),
                      ListTile(
                        onTap: () {
                            Navigator.push<void>(
                                     context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const WalletPage(),),);
                        },
                        horizontalTitleGap: 10.0,
                        leading: Icon(
                          FontAwesomeIcons.bookMedical,
                          weight: 15.0,
                        ),
                        title: Text('Health Edu Resources',
                            style: TextStyle(
                                color: Color.fromARGB(255, 233, 69, 211))),
                      ),
                      ListTile(
                        onTap: () {
                            Navigator.push<void>(
                                      context,
                            MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                  const WalletPage(),),);
                        },
                        horizontalTitleGap: 10.0,
                        leading: Icon(
                          FontAwesomeIcons.phone,
                          weight: 15.0,
                        ),
                        title: Text('Emergency Contacts',
                            style: TextStyle(
                                color: Color.fromARGB(255, 233, 69, 211))),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const WalletPage(),),);},
                        horizontalTitleGap: 10.0,
                        leading: Icon(
                          FontAwesomeIcons.googleWallet,
                          weight: 15.0,
                        ),
                        title: Text('Bills Payment',
                                style: TextStyle(
                                color: Color.fromARGB(255, 233, 69, 211))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              // Takes 5/6 of the screen
              flex: 5,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
