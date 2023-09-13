import 'package:flutter/material.dart';
import 'package:it_1/Widgets/text_widget.dart';
import 'package:it_1/donate_receive_page/donate_page.dart';
import 'package:it_1/donate_receive_page/receive_page.dart';

class donate_and_recevie extends StatefulWidget {
  const donate_and_recevie({Key? key}) : super(key: key);

  @override
  State<donate_and_recevie> createState() => _donate_and_recevieState();
}

class _donate_and_recevieState extends State<donate_and_recevie> {
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
                  Tab(child: text_widget("Donated")),
                  Tab(child: text_widget("Received")),
                ]),
          ),
          body: TabBarView(
            children: [
              receive_page(),
              donate_page()
            ],
          ),
        )
    );
  }
}
