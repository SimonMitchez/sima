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
          'Dr.Mitchez Pilad',
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
          'assets/images/med/cardiologist.jpg',
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
            "Dr. Mitchez Pilad",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "Cardiologist",
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
          SizedBox(height: 10.0),
          Text(
            "Meet Dr. Emily Chen, a skilled cardiologist dedicated to improving heart health. With years of experience, Dr. Chen specializes in diagnosing and treating various heart conditions, ensuring her patients receive personalized care and support. Known for her expertise and compassionate approach, Dr. Chen is committed to helping individuals lead healthier lives. Outside of work, she enjoys spending time with family and staying active. Trust Dr. Chen with your heart health journey today.",
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