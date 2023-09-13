import 'package:flutter/material.dart';
import 'package:it_1/Widgets/text_widget.dart';
import 'package:it_1/utilits/colors.dart';
import 'package:it_1/utilits/style.dart';

class forget_dialogue extends StatelessWidget {
  const forget_dialogue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .350,
      width: MediaQuery.of(context).size.width * .250,
      decoration: BoxDecoration(
          color: Colorscode.pagebackgroundcolor,
          borderRadius: BorderRadius.all(Radius.circular(500))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            text_widget("Password Change"),
            Style.distence_height2,
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colorscode.textcolor),
                    borderRadius:
                    BorderRadius.all(Radius.circular(12))),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colorscode.textcolor),
                    borderRadius:
                    BorderRadius.all(Radius.circular(12))),
                prefixIcon: Icon(
                  Icons.password_rounded,
                  color: Colorscode.textcolor,
                ),
                hintText: "Old Password",
                hintStyle: TextStyle(color: Colorscode.textcolor),
                labelText: "Old Password",
                labelStyle: TextStyle(color: Colorscode.textcolor),
              ),
            ),
            Style.distence_height2,
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colorscode.textcolor),
                    borderRadius:
                    BorderRadius.all(Radius.circular(12))),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colorscode.textcolor),
                    borderRadius:
                    BorderRadius.all(Radius.circular(12))),
                prefixIcon: Icon(
                  Icons.password_rounded,
                  color: Colorscode.textcolor,
                ),
                hintText: "New Password",
                hintStyle: TextStyle(color: Colorscode.textcolor),
                labelText: "New Password",
                labelStyle: TextStyle(color: Colorscode.textcolor),
              ),
            ),
            Style.distence_height2,
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colorscode.textcolor),
                    borderRadius:
                    BorderRadius.all(Radius.circular(12))),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colorscode.textcolor),
                    borderRadius:
                    BorderRadius.all(Radius.circular(12))),
                prefixIcon: Icon(
                  Icons.password_rounded,
                  color: Colorscode.textcolor,
                ),
                hintText: "Confirm Password",
                hintStyle: TextStyle(color: Colorscode.textcolor),
                labelText: "Confirm Password",
                labelStyle: TextStyle(color: Colorscode.textcolor),
              ),
            ),
            Style.distence_height5,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Cencel")),
                Style.distence_width5,
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("OK")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
