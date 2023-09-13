import 'package:flutter/material.dart';
import 'package:it_1/Widgets/list_widget.dart';
import 'package:it_1/Widgets/text_widget.dart';
import 'package:it_1/dialoguebox/forget_dialogue.dart';
import 'package:it_1/dialoguebox/user_feed_back.dart';
import 'package:it_1/home_page/home_page_1.dart';
import 'package:it_1/privacy_and_security/privacy_and_security.dart';
import 'package:it_1/terms_and_conditions/terms_and_conditions.dart';
import 'package:it_1/utilits/colors.dart';
import 'package:it_1/utilits/style.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorscode.pagebackgroundcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colorscode.pagebackgroundcolor,
            child: Column(
              children: [
                Style.distence_height5,
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(color: Colorscode.forgetbuttoncolor, borderRadius: BorderRadius.all(Radius.circular(100.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          backgroundColor: Colorscode.pagebackgroundcolor,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -3,
                        left: MediaQuery.of(context).size.width / 4.5,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 16,
                          width: MediaQuery.of(context).size.width / 8,
                          decoration: BoxDecoration(color: Colorscode.forgetbuttoncolor, borderRadius: BorderRadius.all(Radius.circular(100.0))),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              backgroundColor: Colorscode.pagebackgroundcolor,
                            ),
                          ),
                        ),
                    )
                  ],
                ),
                Style.distence_height15,
                text_widget("Name"),
                text_widget("Email"),
                text_widget("Blood Group"),
                Style.distence_height15,
                Divider(
                  height: 3,
                  color: Colors.red,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      text_widget("I Want To Donate"),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                        },
                          child: list_tile("Home Page")
                      ),
                      GestureDetector(
                        onTap: (){
                          showDialog(
                              context: context,
                              builder: (context){
                                return Dialog(
                                  child: forget_dialogue(),
                                );
                              }
                          );
                        },
                          child: list_tile("Change Password"),
                      ),
                      GestureDetector(
                        onTap: (){
                          showDialog(
                              context: context,
                              builder: (context){
                                return Dialog(
                                  child: user_feed_back(),
                                );
                              }
                          );
                        },
                          child: list_tile("User Feed Back"),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>privacy()));
                        },
                          child: list_tile("Privacy & Security"),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>terms_and_condition()));
                        },
                          child: list_tile("Terms & Conditions"),
                      ),
                      Divider(
                        height: 3,
                        color: Colors.red,
                      ),
                      Style.distence_height15,
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 16,
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),
                              color: Colorscode.primary_color,
                              border: Border(
                                top: BorderSide(
                                  color: Colorscode.primary_color,
                                  width: 1,
                                ),
                                bottom: BorderSide(
                                  color: Colorscode.primary_color,
                                  width: 1,
                                ),
                                left: BorderSide(
                                  color: Colorscode.primary_color,
                                  width: 1,
                                ),
                                right: BorderSide(
                                  color: Colorscode.primary_color,
                                  width: 1,
                                )
                              )
                               ),
                          child: Center(
                            child: Text("SIGN OUT", style: TextStyle(color: Colorscode.pagebackgroundcolor),),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
