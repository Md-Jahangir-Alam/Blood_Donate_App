import 'package:flutter/material.dart';
import 'package:it_1/Widgets/button_widget.dart';
import 'package:it_1/Widgets/text_widget.dart';
import 'package:it_1/utilits/colors.dart';
import 'package:it_1/utilits/style.dart';

class patient_request extends StatelessWidget {
  const patient_request({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Patient Request", style: TextStyle(color: Colors.white),),backgroundColor: Colors.red,),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colorscode.pagebackgroundcolor,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index){
                return Card(
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
                      Padding(
                        padding: const EdgeInsets.only(left: 70.0, right: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            custom_button("Decline"),
                            custom_button("Accept"),
                          ],
                        ),
                      ),
                      Style.distence_height5,
                    ],
                  ),
                );
              },
            )
        ),
      ),
    );
  }
}
