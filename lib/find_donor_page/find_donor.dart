import 'package:flutter/material.dart';
import 'package:it_1/Widgets/button_widget.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:it_1/utilits/colors.dart';
import 'package:it_1/utilits/style.dart';

import '../Widgets/dropdown_menu.dart';

class find_donor extends StatelessWidget {
  const find_donor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Find Donor", style: TextStyle(color: Colorscode.pagebackgroundcolor),), backgroundColor: Colors.red,),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Select Blood Group", style: Style.large500w,),
              Style.distence_height5,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCheckBoxGroup(
                    buttonTextStyle: ButtonTextStyle(
                      selectedColor: Colors.red,
                      unSelectedColor: Colors.orange,
                      textStyle: TextStyle(
                        fontSize: 16,
                      ),
                      selectedTextStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    unSelectedColor: Theme.of(context).canvasColor,
                    buttonLables: [
                      "A+",
                      "A-",
                      "B+",
                      "B-",
                    ],
                    buttonValuesList: [
                      "A+",
                      "A-",
                      "B+",
                      "B-",
                    ],
                    checkBoxButtonValues: (values) {
                      print(values);
                    },
                    spacing: 0,
                    horizontal: false,
                    enableButtonWrap: false,
                    width: 80,
                    shapeRadius: 100.0,
                    radius: 100.0,
                    height: 25,
                    absoluteZeroSpacing: false,
                    selectedColor: Theme.of(context).primaryColorDark,
                    padding: 10,
                  )
                ],
              ),
              Style.distence_height5,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCheckBoxGroup(
                    buttonTextStyle: ButtonTextStyle(
                      selectedColor: Colors.red,
                      unSelectedColor: Colors.orange,
                      textStyle: TextStyle(
                        fontSize: 16,
                      ),
                      selectedTextStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    unSelectedColor: Theme.of(context).canvasColor,
                    buttonLables: [
                      "O+",
                      "O-",
                      "AB+",
                      "AB-",
                    ],
                    buttonValuesList: [
                      "O+",
                      "O-",
                      "AB+",
                      "AB-",
                    ],
                    checkBoxButtonValues: (values) {
                      print(values);
                    },
                    spacing: 0,
                    horizontal: false,
                    enableButtonWrap: false,
                    width: 80,
                    shapeRadius: 100.0,
                    radius: 100.0,
                    height: 25,
                    absoluteZeroSpacing: false,
                    selectedColor: Theme.of(context).primaryColorDark,
                    padding: 10,
                  )
                ],
              ),
              Style.distence_height10,
              Divider(
                height: 3,
                color: Colorscode.textcolor,
              ),
              Style.distence_height10,
              dropdown_button(),
              Style.distence_height10,
              DropDown2(),
              Style.distence_height10,
              DropDown3(),
              Style.distence_height10,
              Container(
                width: MediaQuery.of(context).size.width / 3,
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
                  child: Text("Search", style: TextStyle(color: Colorscode.pagebackgroundcolor),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
