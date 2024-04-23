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
          'Dr. Sarah Karter',
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
          'assets/images/med/radiologist.jpg',
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
            "Dr.Sarah Karter",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "Radiologist",
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
          SizedBox(height: 10.0),
          Text(
            "Introducing Dr. Emily Rodriguez, a skilled and experienced radiologist dedicated to diagnostic imaging and patient care. With specialized training and years of expertise, Dr. Rodriguez specializes in interpreting medical images to diagnose and treat a wide range of conditions. From X-rays and ultrasounds to MRI and CT scans, she provides accurate and timely assessments, guiding treatment decisions and improving patient outcomes. Known for her attention to detail and commitment to excellence, Dr. Rodriguez works collaboratively with referring physicians to ensure the highest quality of care for every patient. Trust Dr. Rodriguez for expert radiology services and compassionate support throughout your diagnostic journey.",
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