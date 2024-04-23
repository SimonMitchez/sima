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
          'Dr.Stephen Curry',
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
          'assets/images/med/pediatrician.jpg',
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
            "Dr. Stephen Curry",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "Pediatrician",
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
          SizedBox(height: 10.0),
          Text(
            "Meet Dr. Sarah Johnson, a caring pediatrician devoted to children's health and well-being. With a gentle demeanor and years of experience, Dr. Johnson specializes in providing compassionate care to infants, children, and adolescents. From routine check-ups to managing complex medical conditions, she is dedicated to building strong relationships with her young patients and their families. With Dr. Johnson's expertise and nurturing approach, your child's health is in good hands.",
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