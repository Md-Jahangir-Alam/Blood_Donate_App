import 'package:flutter/material.dart';
import 'package:it_1/Widgets/text_widget.dart';
import 'package:it_1/utilits/colors.dart';
import 'package:it_1/utilits/style.dart';

class user_feed_back extends StatelessWidget {
  const user_feed_back({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * .200,
        width: MediaQuery.of(context).size.width * .250,
        decoration: BoxDecoration(
            color: Colorscode.pagebackgroundcolor,
            borderRadius: BorderRadius.all(Radius.circular(500))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              text_widget("User Feed Back"),
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
                    Icons.comment,
                    color: Colorscode.textcolor,
                  ),
                  hintText: "Comment",
                  hintStyle: TextStyle(color: Colorscode.textcolor),
                  labelText: "Comment",
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
      ),
    );
  }
}
