import 'package:flutter/material.dart';
import 'package:it_1/Widgets/text_widget.dart';
import 'package:it_1/panding_and_accepted_page/accepted_page.dart';
import 'package:it_1/panding_and_accepted_page/panding_page.dart';
import 'package:it_1/utilits/colors.dart';

class panding_and_accepted extends StatefulWidget {
  const panding_and_accepted({Key? key}) : super(key: key);

  @override
  State<panding_and_accepted> createState() => _panding_and_acceptedState();
}

class _panding_and_acceptedState extends State<panding_and_accepted> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
              tabs: [
            Tab(child: text_widget("Panding")),
            Tab(child: text_widget("Accepted")),
          ]),
        ),
        body: TabBarView(
          children: [
            panding_page(),
            accepted_page()
          ],
        ),
      )
    );
  }
}
