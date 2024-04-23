import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrugsPage extends StatefulWidget {
  const DrugsPage({Key? key});

  @override
  State<DrugsPage> createState() => _DrugsPageState();
}

class _DrugsPageState extends State<DrugsPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/med/med6pic.jpg'),
        title: Text(
          'Find Your Medicine Here',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 162, 202, 235),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/icons/backPic.jpg'),
            fit: BoxFit.fitWidth,
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/icons/logo.png',
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
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
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.8,
                ),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ImageContainer(
                        imageUrl: 'assets/images/icons/dash.jpg',
                        text: 'Emergency',
                      ),
                      ImageContainer(
                        imageUrl: 'assets/images/icons/dash.jpg',
                        text: 'Emergency',
                      ),
                      ImageContainer(
                        imageUrl: 'assets/images/icons/dash.jpg',
                        text: 'Emergency',
                      ),
                       ImageContainer(
                        imageUrl: 'assets/images/icons/dash.jpg',
                        text: 'Emergency',
                      ),
                       ImageContainer(
                        imageUrl: 'assets/images/icons/dash.jpg',
                        text: 'Emergency',
                      ),
                       ImageContainer(
                        imageUrl: 'assets/images/icons/dash.jpg',
                        text: 'Emergency',
                      ),
                       ImageContainer(
                        imageUrl: 'assets/images/icons/dash.jpg',
                        text: 'Emergency',
                      ),
                       ImageContainer(
                        imageUrl: 'assets/images/icons/dash.jpg',
                        text: 'Emergency',
                      ),
                       ImageContainer(
                        imageUrl: 'assets/images/icons/dash.jpg',
                        text: 'Emergency',
                      ),
                       ImageContainer(
                        imageUrl: 'assets/images/icons/dash.jpg',
                        text: 'Emergency',
                      ),
                       ImageContainer(
                        imageUrl: 'assets/images/icons/dash.jpg',
                        text: 'Emergency',
                      ),
                    ],
                  );
                },
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

  const ImageContainer(
      {Key? key,
      required this.imageUrl,
      required this.text,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
