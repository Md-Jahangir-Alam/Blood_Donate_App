import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:it_1/utilits/colors.dart';
import 'package:it_1/utilits/style.dart';

class profile_page extends StatefulWidget {
  profile_page({Key? key}) : super(key: key);

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),backgroundColor: Colors.red,),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Style.distence_height15,
              Text("Notifications", style: Style.extralarge500w,),
              Style.distence_height10,
              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("App Notification", style: Style.defaulttext500w,),
                    ),
                    CupertinoSwitch(
                      activeColor: Colors.red,
                        value: _switchValue,
                        onChanged: (value){
                          setState(() {
                            _switchValue = value;
                          });
                        }
                    ),
                  ],
                ),
              ),
              Style.distence_height15,
              Text("Account Information", style: Style.extralarge500w,),
              Style.distence_height10,
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      height: 3,
                      color: Colorscode.textcolor,
                    ),
                    Text("Name            : MD. JAHANGIR MIA", style: Style.defaulttext500w,),
                    Divider(
                      height: 3,
                      color: Colorscode.textcolor,
                    ),
                    Text("Email             : jahangirad14@gmail.com", style: Style.defaulttext500w,),
                    Divider(
                      height: 3,
                      color: Colorscode.textcolor,
                    ),
                    Text("Phone No     : 01796196500", style: Style.defaulttext500w,),
                    Divider(
                      height: 3,
                      color: Colorscode.textcolor,
                    ),
                    Text("Blood Group : AB+", style: Style.defaulttext500w,),
                    Divider(
                      height: 3,
                      color: Colorscode.textcolor,
                    ),
                    Text("Gender           : Male", style: Style.defaulttext500w,),
                    Divider(
                      height: 3,
                      color: Colorscode.textcolor,
                    ),

                  ],
                )
              ),
              Style.distence_height15,
              Text("Other Information", style: Style.extralarge500w,),
              Style.distence_height10,
              Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        height: 3,
                        color: Colorscode.textcolor,
                      ),
                      Text("Division          : Rongpur", style: Style.defaulttext500w,),
                      Divider(
                        height: 3,
                        color: Colorscode.textcolor,
                      ),
                      Text("District           : Gaibandha", style: Style.defaulttext500w,),
                      Divider(
                        height: 3,
                        color: Colorscode.textcolor,
                      ),
                      Text("Thana             : Sundarganj", style: Style.defaulttext500w,),
                      Divider(
                        height: 3,
                        color: Colorscode.textcolor,
                      ),
                      Text("Address         : Ramdakuya, Sundarganj", style: Style.defaulttext500w,),
                      Divider(
                        height: 3,
                        color: Colorscode.textcolor,
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
