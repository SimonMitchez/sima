import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sima_app1/screens/docs/Primary/famDoc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  State<DoctorsPage> createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  final TextEditingController _searchController = TextEditingController();
   final _controller = PageController();

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
            child: Scaffold(
                appBar: AppBar(
                  leading: Image.asset('assets/images/med/med6pic.jpg'),
                  title: Text(
                    'Find Your Consultant',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  centerTitle: true,
                  backgroundColor: Color.fromARGB(255, 162, 202, 235),
                ),
              body: SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/icons/logo.png',
                          height: 20.0,
                          width: 20.0,),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.grey[100],
                            hintText: "Search by name",
                            hintStyle: GoogleFonts.montserrat(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              'Primary Doctors',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40.0,
                          ),
                          Icon(
                            FontAwesomeIcons.userDoctor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                     
                Container(
                     height: 300,
                     child: PageView(
                     controller: _controller,
                     scrollDirection: Axis.horizontal,
                children: [
                   DocContainer(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/familymed.png',
                  text: 'Family Doctor',
                   ),
                   DocContainer(
                      onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/clinicalDoc.jpg',
                  text: 'Clinical Doctor',
                   ),
                   DocContainer(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/pediatrician.jpg',
                  text: 'Pediatrician',
                   ),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.blue),
          ),

                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              'Special Doctors',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40.0,
                          ),
                          Icon(
                            FontAwesomeIcons.userDoctor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                    
                Container(
                     height: 300,
                     child: PageView(
                     controller: _controller,
                     scrollDirection: Axis.horizontal,
                children: [
                   DocContainer(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/optician.jpeg',
                  text: 'Optician',
                   ),
                   DocContainer(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/dentist.png',
                  text: 'Dentist',
                   ),
                   DocContainer(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/neuroSurgeon.jpg',
                  text: 'NeuroSurgeon',
                   ),
              ],
            ),
          ),

          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.blue),
          ),

                      SizedBox(
                        height: 5.0,
                      ),
                  
                Container(
                     height: 300,
                     child: PageView(
                     controller: _controller,
                     scrollDirection: Axis.horizontal,
                children: [
                   DocContainer(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/Orthopedic.jpg',
                  text: 'Orthopedic',
                   ),
                   DocContainer(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/dermatologist.jpg',
                  text: 'Dermatologist',
                   ),
                   DocContainer(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/cardiologist.jpg',
                  text: 'Cardiologist',
                   ),
              ],
            ),
          ),
         SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.blue),
          ),

                      SizedBox(
                        height: 8.0,
                      ),
                  
                Container(
                     height: 300,
                     child: PageView(
                     controller: _controller,
                     scrollDirection: Axis.horizontal,
                children: [
                   DocContainer(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/radiologist.jpg',
                  text: 'Radiologist',
                   ),
                   DocContainer(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/pyschiatrist.jpg',
                  text: 'Psychiatrist',
                   ),
                   DocContainer(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/Pathologist.jpg',
                  text: 'Pathologist',
                   ),
              ],
            ),
          ),
        SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.blue),
          ),
            SizedBox(
                    height: 5.0,
                  ),
                  
               Container(
                     height: 300,
                     child: PageView(
                     controller: _controller,
                     scrollDirection: Axis.horizontal,
                children: [
                   DocContainer(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/gynecologist.jpg',
                  text: 'Gynecologist',
                   ),
                   DocContainer(
                      onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/pulmonologist.jpg',
                  text: 'Pulmonologist',
                   ),
                   DocContainer(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyDoctor()),);},
                  imageUrl: 'assets/images/med/allergist.jpg',
                  text: 'Allergist',
                   ),
              ],
            ),
          ),
        SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.blue),
          ),
                  
                  ])))));
  }
}

class DocContainer extends StatelessWidget {
  final String text;
  final String imageUrl;
  final VoidCallback onTap;

  const DocContainer({
    Key? key,
    required this.text,
    required this.imageUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: SingleChildScrollView(
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
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
                          ),
                        ],
                      ))
                ]))));
  }
}
