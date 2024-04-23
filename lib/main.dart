import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sima_app1/screens/AccountCreation/loginScreen.dart';
import 'package:sima_app1/screens/Home/doctors.dart';
import 'package:sima_app1/screens/Home/drugs.dart';
import 'package:sima_app1/screens/Home/homeScreen.dart';
import 'package:sima_app1/screens/Home/services.dart';
import 'package:sima_app1/screens/Home/test2.dart';
import 'package:sima_app1/screens/dashBoard.dart';
import 'package:sima_app1/screens/docs/Primary/famDoc.dart';
import 'package:sima_app1/screens/mainScreen.dart';
import 'package:sima_app1/screens/Home/test.dart';
import 'package:sima_app1/screens/Home/wallet.dart';
import 'package:sima_app1/screens/Home/settings.dart';
import 'package:sima_app1/screens/test.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sima App',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            appBarTheme: AppBarTheme(surfaceTintColor: Colors.white)),
        home: MyAppointmentForm()
        );
  }
}
