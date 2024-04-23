import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/med/med6pic.jpg'),
        title: Text(
          'Settings',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 162, 202, 235),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: 
          ListTile(
            leading: CircleAvatar(child: Image.asset('assets/images/icons/profile.png'),),
            title: Text('Mitchez Pilad'),
            subtitle: Text('mitchezpilad@gmail.com'),),),
             Divider(),
            Expanded(child: 
            ListView(
              children: [
                   ListTile(
                        horizontalTitleGap: 30.0,
                        leading: Icon(FontAwesomeIcons.userLock, weight: 15.0,),
                        title: Text('Change Passwword',
                            style: TextStyle(color:  Colors.blueGrey)),),
                                       ListTile(
                        horizontalTitleGap: 30.0,
                        leading: Icon(FontAwesomeIcons.notesMedical, weight: 15.0,),
                        title: Text('Terms and Conditions',
                            style: TextStyle(color: Colors.blueGrey,)),),
                                      ListTile(
                        horizontalTitleGap: 30.0,
                        leading: Icon(Icons.logout_outlined, weight: 15.0,),
                        title: Text('Sign Out',
                            style: TextStyle(color: Colors.blueGrey)),),
               ],
            ),
       ), ],
      )
    );
  }
}
