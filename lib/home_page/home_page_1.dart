import 'package:flutter/material.dart';
import 'package:it_1/donate_receive_page/donate_receive_page.dart';
import 'package:it_1/drawer/drawer_1.dart';
import 'package:it_1/navbar_home_page/home_navbar.dart';
import 'package:it_1/panding_and_accepted_page/panding_and_accepted.dart';
import 'package:it_1/patient_request/patient_request_page.dart';
import 'package:it_1/profile_page/profile.dart';
import 'package:it_1/utilits/colors.dart';
import 'package:it_1/utilits/images.dart';
import 'package:it_1/utilits/style.dart';


class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {


  var _currentindex = 0;

  final pages = [navbar_home(), panding_and_accepted(), patient_request(), donate_and_recevie(), profile_page()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: (index){
          setState(() {
            _currentindex = index;
          });
        },
        items: [
        BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.home, size: 25,),
          label: ""
        ),
        BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.calendar_today_outlined, size: 25,),
          label: ""
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.comment, size: 25,),
          label: ""
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.follow_the_signs_outlined, size: 25,),
          label: ""
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, size: 25,),
          label: ""
        ),
      ],),
      body: pages[_currentindex]
    );
  }
}
