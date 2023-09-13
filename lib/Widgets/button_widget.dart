import 'package:flutter/material.dart';
import 'package:it_1/utilits/colors.dart';

Widget custom_button(String text){
  return Container(
    width: 80,
    height: 30,
    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),
        color: Colorscode.pagebackgroundcolor,
        border: Border(
            top: BorderSide(
              color: Colorscode.textcolor,
              width: 1,
            ),
            bottom: BorderSide(
              color: Colorscode.textcolor,
              width: 1,
            ),
            left: BorderSide(
              color: Colorscode.textcolor,
              width: 1,
            ),
            right: BorderSide(
              color: Colorscode.textcolor,
              width: 1,
            )
        )
    ),
    child: Center(
      child: Text(text),
    ),
  );
}