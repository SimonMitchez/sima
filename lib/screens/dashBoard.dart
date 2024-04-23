import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sima_app1/screens/Home/doctors.dart';
import 'package:sima_app1/screens/responsive.dart';

class DashScreen extends StatelessWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/icons/backPic.jpg'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('DashBoard',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blueGrey),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/icons/profileS.png',
                        height: 30,
                      ),
                      SizedBox(width: 10), // Added SizedBox
                      Text('Mitchez Pilad'),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: PopupMenuButton(
                          icon: Icon(Icons.keyboard_arrow_down_outlined),
                          itemBuilder: (BuildContext context) => [
                            PopupMenuItem(
                              child: Text('My Account'),
                              value: 'My Account',
                            ),
                            PopupMenuItem(
                              child: Text('Bio'),
                              value: 'Bio',
                            ),
                            PopupMenuItem(
                              child: Text('Settings'),
                              value: 'Settings',
                            ),
                          ],
                          onSelected: (value) {
                            // Handle the selected option here
                            print('Selected option: $value');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Welcome Back Mitchez Pilad',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(
                  width: 15.0,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 204, 188, 231),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    size: 10.0,
                  ),
                  label: Text('Add New'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                ImageContainer(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorsPage()),);},
                  imageUrl: 'assets/images/med/consultant1.jpg',
                  text: 'Doctor Section',
                ),
                ImageContainer(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorsPage()),);},
                  imageUrl: 'assets/images/med/med12pic.jpg',
                  text: 'Drugs Section',
                ),
                ImageContainer(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorsPage()),);},
                  imageUrl: 'assets/images/med/item2pic.jpg',
                  text: 'Reviews',
                ),
                ImageContainer(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorsPage()),);},
                  imageUrl: 'assets/images/icons/dash.jpg',
                  text: 'Emergency',
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Appointments',
                  ),
                  DataTable(
                    columns: [
                      DataColumn(label: Text('Doctor Name')),
                      DataColumn(label: Text('Date')),
                      DataColumn(label: Text('Time')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Row(
                          children: [
                            Image.asset(
                              'assets/images/icons/profileS.png',
                              height: 30,
                              width: 20,
                            ),
                          ],
                        )),
                        DataCell(Text('Date')),
                        DataCell(Text('Time')),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Activity',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 200,
                    child: Stack(
                      children: [
                        PieChart(
                          PieChartData(
                            sectionsSpace: 0,
                            centerSpaceRadius: 78,
                            startDegreeOffset: -90,
                            sections: [
                              PieChartSectionData(
                                color: Colors.blue,
                                value: 25,
                                title: 'Doctor Appointments',
                                radius: 25,
                              ),
                              PieChartSectionData(
                                color: Color(0xFF26E5FF),
                                value: 20,
                                title: 'Purchase',
                                radius: 25,
                              ),
                              PieChartSectionData(
                                color: Color(0xFFFFCF26),
                                value: 10,
                                title: 'Reviews',
                                radius: 25,
                              ),
                              PieChartSectionData(
                                color: Color(0xFFEE2727),
                                value: 15,
                                title: 'Dialing for Help',
                                radius: 25,
                              ),
                            ],
                          ),
                        ),
                        Positioned.fill(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '29.1%',
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  _PieChartTable('Doctor Visits', Colors.blue),
                                  _PieChartTable('Purchase', Color(0xFF26E5FF)),
                                  _PieChartTable('Reviews', Color(0xFFFFCF26)),
                                  _PieChartTable(
                                      'Dialing for Help', Color(0xFFEE2727)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100.0,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 181, 235, 245),
                  border:
                      Border.all(width: 2, color: Colors.blue.withOpacity(0.2)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  )),
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      'assets/images/icons/profile.png',
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Ahmmed Nassir',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text('Peditrician',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Text('Bio Data')
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100.0,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 181, 235, 245),
                border: Border.all(
                    width: 2, color: Colors.lightBlue.withOpacity(0.2)),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      'assets/images/icons/profile.png',
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Stacy Nyambura',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text('Pathologist',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Text('Bio Data')
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100.0,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 181, 235, 245),
                border:
                    Border.all(width: 2, color: Colors.blue.withOpacity(0.2)),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      'assets/images/icons/profile.png',
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Mitchez Pilad',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text('NeuroSurgeon',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Text('Bio Data')
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100.0,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 181, 235, 245),
                border: Border.all(
                    width: 2, color: Colors.blueAccent.withOpacity(0.2)),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      'assets/images/icons/profile.png',
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Stephen Paul',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text('Cardiologist',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Text('Bio Data')
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class ImageContainer extends StatelessWidget {
  final String imageUrl;
  final String text;
  final VoidCallback onTap;

  const ImageContainer(
      {Key? key,
      required this.imageUrl,
      required this.text,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            margin: EdgeInsets.all(10),
            width: 220,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(children: [
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      text,
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ))
            ])));
  }
}

Widget _PieChartTable(String title, Color color) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        Container(
          width: 20,
          height: 20,
          color: color,
        ),
        SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
