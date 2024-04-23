import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sima_app1/screens/Home/appointments.dart';
import 'package:sima_app1/screens/Home/video.dart';

class FamilyDoctor extends StatefulWidget {
  const FamilyDoctor({Key? key});

  @override
  State<FamilyDoctor> createState() => _FamilyDoctorState();
}

class _FamilyDoctorState extends State<FamilyDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dr.Grace Kia',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 162, 202, 235),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
      alignment: Alignment.topLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(
          'assets/images/med/pulmonologist.jpg',
          height: 250.0, // Fixed height
        ),
      ),
    ),
     Container(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dr. Grace Kia",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "Pulmonologist",
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
          SizedBox(height: 10.0),
          Text(
            "Introducing Dr. Michael Patel, a dedicated pulmonologist committed to respiratory health. With a wealth of experience and specialized training, Dr. Patel focuses on diagnosing and treating lung diseases and disorders. From asthma and COPD to pulmonary infections and sleep apnea, Dr. Patel provides comprehensive care tailored to each patient's needs. Known for his expertise and compassionate approach, he works tirelessly to improve the respiratory health and quality of life for his patients. Trust Dr. Patel for expert pulmonary care and support.",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0), 
          Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
            MaterialPageRoute(builder: (context) => MessagingPage()),);
          },
          child: Text("Chat Now"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
            MaterialPageRoute(builder: (context) => MyAppointmentForm()),);
          },
          child: Text("Book Appointment"),
        ),
      ],
    )]))])));

      }
       }