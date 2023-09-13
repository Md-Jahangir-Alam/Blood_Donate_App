import 'package:flutter/material.dart';
import 'package:it_1/drawer/drawer_1.dart';
import 'package:it_1/find_donor_page/find_donor.dart';
import 'package:it_1/patient_request/patient_request_page.dart';
import 'package:it_1/top_donors_page/top_donor_page.dart';
import 'package:it_1/utilits/images.dart';
import 'package:it_1/utilits/style.dart';


class navbar_home extends StatelessWidget {
  navbar_home({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _drawer = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawer,
      drawer: Drawer(
        child: drawer(),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              images.app_icon,
              height: 30,
              width: 30,
            ),
            Style.distence_width5,
            Text("Scouts Blood Donation\nBangladesh Scouts"),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            _drawer.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_add,
                size: 30,
              ))
        ],
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>find_donor()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 4,
                            child: Image.asset(images.app_find_donors)
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>patient_request()));
                        },
                        child: Container(
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 4,
                            child: Image.asset(images.app_request)
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>top_donor_page()));
                        },
                        child: Container(
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 4,
                            child: Image.asset(images.app_top_donors)
                        ),
                      ),
                    ],
                  ),
                  Style.distence_height20,
                  Container(
                      width: double.infinity,
                      child: Image.asset(images.app_bannar)
                  ),
                ],
              )
            ),
          )
      ),
    );
  }
}
