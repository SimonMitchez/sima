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
          'Dr.Kawhi Leonard',
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
          'assets/images/med/dentist.png',
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
            "Dr. Kawhi Leonard",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "Dentist",
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
          SizedBox(height: 10.0),
          Text(
            "Meet Dr. Emily Rodriguez, a skilled dentist dedicated to providing exceptional dental care. With a gentle touch and years of experience, Dr. Rodriguez specializes in a wide range of dental services, including preventive care, restorative treatments, and cosmetic dentistry. From routine cleanings to complex procedures, she takes pride in delivering personalized care tailored to each patient's unique needs. Known for her compassionate approach and commitment to patient comfort, Dr. Rodriguez creates a welcoming environment where patients feel relaxed and confident in their dental care. Trust Dr. Rodriguez for a healthy and beautiful smile.",
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