import 'package:flutter/material.dart';
import 'package:it_1/Widgets/text_widget.dart';
import 'package:it_1/utilits/colors.dart';
import 'package:it_1/utilits/style.dart';

class receive_page extends StatefulWidget {
  const receive_page({Key? key}) : super(key: key);

  @override
  State<receive_page> createState() => _receive_pageState();
}

class _receive_pageState extends State<receive_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colorscode.pagebackgroundcolor,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index){
                return Card(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .15,
                                child: CircleAvatar(
                                  backgroundColor: Colorscode.forgetbuttoncolor,
                                  radius: 45,
                                )
                            ),
                            Style.distence_width10,
                            Column(
                              children: [
                                Row(

                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        width: MediaQuery.of(context).size.width * .20,
                                        child: Text("Name")
                                    ),
                                    Style.distence_width5,
                                    Text(" : "),
                                    SizedBox(
                                        width: MediaQuery.of(context).size.width * .32,
                                        child: Text("MD JAHANGIR MIA", maxLines: 2, overflow: TextOverflow.ellipsis,)
                                    ),
                                    Style.distence_height2,
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        width: MediaQuery.of(context).size.width * .20,
                                        child: Text("Email")
                                    ),
                                    Style.distence_width5,
                                    Text(" : "),
                                    SizedBox(
                                        width: MediaQuery.of(context).size.width * .32,
                                        child: Text("jahangirad14@gmail.com", maxLines: 2, overflow: TextOverflow.ellipsis,)
                                    ),
                                    Style.distence_height2,
                                  ],
                                ),
                                Row(

                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        width: MediaQuery.of(context).size.width * .20,
                                        child: Text("Phone")
                                    ),
                                    Style.distence_width5,
                                    Text(" : "),
                                    SizedBox(
                                        width: MediaQuery.of(context).size.width * .32,
                                        child: Text("01796-196500", maxLines: 2, overflow: TextOverflow.ellipsis,)
                                    ),
                                    Style.distence_height2,
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .15,
                                child: Column(
                                  children: [
                                    Text("A", style: TextStyle(color: Colors.red, fontSize: 18),),
                                    Icon(Icons.phone_in_talk, size: 20,)
                                  ],
                                )
                            ),
                          ],
                        ),
                        Style.distence_height5,
                      ],
                    ),
                  ),
                );
              },
            )
        ),
      ),
    );
  }
}
