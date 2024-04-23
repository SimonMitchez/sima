import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Horizontal Scrollable Containers'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ImageContainer(
                imageUrl: 'assets/images/med/item2pic.jpg',
                text: 'Doctor Section',
              ),
              ImageContainer(
                imageUrl: 'assets/images/med/item2pic.jpg',
                text: 'Drugs Section',
              ),
              ImageContainer(
                imageUrl: 'assets/images/med/item2pic.jpg',
                text: 'Reviews',
              ),
              ImageContainer(
                imageUrl: 'assets/images/med/item2pic.jpg',
                text: 'Emergency',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String imageUrl;
  final String text;

  const ImageContainer({
    Key? key,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
