import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sima_app1/screens/Home/doctors.dart';
import 'package:sima_app1/screens/Home/history.dart';
import 'package:sima_app1/screens/Home/paymentScreen.dart';
import 'package:sima_app1/screens/Home/profile.dart';
import 'package:sima_app1/screens/Home/schedule.dart';
import 'package:sima_app1/screens/Home/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'HOME',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 4, 15, 234),
              ),
              child: Text(
                '🙂',
                style: TextStyle(
                  color: Color.fromARGB(255, 236, 237, 240),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.sick),
              title: const Text('My Account'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Profile())));
              },
            ),
            Divider(
              height: 25.0,
            ),
            ListTile(
              leading: const Icon(FontAwesomeIcons.calendarCheck),
              title: const Text('Appointments Schedule'),
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => Schedule())));
              },
            ),
            ListTile(
              leading: const Icon(FontAwesomeIcons.servicestack),
              title: const Text('Services'),
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => ServicesPage())));
              },
            ),
            ListTile(
              leading: const Icon(Icons.history_outlined),
              title: const Text('Attendance'),
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: ((context) => History())));
              },
            ),
            ListTile(
              leading: const Icon(FontAwesomeIcons.userDoctor),
              title: const Text('Doctors'),
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: ((context) => DoctorsPage())));
              },
            ),
            ListTile(
              leading: const Icon(FontAwesomeIcons.googleWallet),
              title: const Text('BillsPayment'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => PaymentPage())));
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Current Location',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.indigo,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Nairobi, Kenya',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.indigo,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.indigo),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.montserrat(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('assets/images/med/doc2pic.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      bottom: 10,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        color: Colors.black.withOpacity(0.7),
                        child: Text(
                          'Doctor Consultant',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/med/item2pic.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          bottom: 10,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            color: Colors.black.withOpacity(0.7),
                            child: Text(
                              'Diagnostics',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/med/med12pic.jpg'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          bottom: 10,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            color: Colors.black.withOpacity(0.7),
                            child: Text(
                              'Pharmacy',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upload Prescription',
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Order via Counter..',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Upload',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

