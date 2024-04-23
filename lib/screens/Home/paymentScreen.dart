import 'package:flutter/material.dart';
import 'package:sima_app1/screens/Payment/billsPic.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sima_app1/screens/Payment/myButton.dart';
import 'package:sima_app1/screens/Payment/myListTile.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(onPressed:() {},
      backgroundColor: Colors.blue,
      child: Icon(Icons.monetization_on),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          //AppBar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Text(
                  'Bill ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Bill Payment',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),

          //Cards
          Container(
            height: 300,
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [
                MyBills(),
                MyBills(),
                MyBills(),
              ],
            ),
          ),
          SizedBox(height: 15,),

          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.blue),
          ),
          SizedBox(height: 16,),

          Padding(
            padding: EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                  iconImagePath: 'assets/images/med/doc1pic.jpg',
                  buttonText: 'Mpesa',
                ),
                MyButton(
                  iconImagePath: 'assets/images/med/doc2pic.jpg',
                  buttonText: 'Bank',
                ),
                MyButton(
                  iconImagePath: 'assets/images/med/doc3pic.jpg',
                  buttonText: 'Debit/Credit Card',
                ),
              ],
            ),
          ),
          SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                MyListTile(
                  iconImagePath: 'assets/images/med/doc3pic.jpg',
                  tileTitle: 'Statistics',
                  titleSubTitle: 'Payment,'
                ),
                MyListTile(
                  iconImagePath: 'assets/images/med/doc3pic.jpg',
                  tileTitle: 'Transactions',
                  titleSubTitle: 'Transactions History',
                ),
                MyListTile(
                  iconImagePath: 'assets/images/med/doc3pic.jpg',
                  tileTitle: 'Statements',
                  titleSubTitle: 'Transaction Statements',
                ),
              ],
            ),
          ),        
        ],
      ),
    );
  }
}
