import 'package:flutter/material.dart';
import 'package:it_1/home_page/home_page_1.dart';
import 'package:it_1/registration_page/registration_page_1.dart';
import 'package:it_1/utilits/colors.dart';
import 'package:it_1/utilits/images.dart';
import '../utilits/style.dart';


class login_page extends StatelessWidget {
  const login_page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colorscode.pagebackgroundcolor,
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 110, left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Image.asset(images.login_image)),
                  SizedBox(
                    height: 20,
                      child: Text(
                        "Bangladesh Scouts",
                        style: Style.extralarge700w
                      )),
                  SizedBox(
                      child: Text(
                        "Blood Bank",
                        style: Style.extralarge500w
                      )),
                  Style.distence_height10,
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colorscode.primary_color),
                          borderRadius:
                          BorderRadius.all(Radius.circular(12))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colorscode.primary_color),
                          borderRadius:
                          BorderRadius.all(Radius.circular(12))),
                      prefixIcon: Icon(
                        Icons.person_outline_outlined,
                        color: Colorscode.primary_color,
                      ),
                      hintText: "Phone no",
                      hintStyle: TextStyle(color: Colorscode.textcolor),
                      labelText: "Phone no",
                      labelStyle: TextStyle(color: Colorscode.primary_color),
                    ),
                  ),
                  Style.distence_height5,
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colorscode.primary_color),
                          borderRadius:
                          BorderRadius.all(Radius.circular(12))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colorscode.primary_color),
                          borderRadius:
                          BorderRadius.all(Radius.circular(12))),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colorscode.primary_color,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colorscode.textcolor),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colorscode.primary_color),
                    ),
                  ),
                  Style.distence_height20,
                  next()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class next extends StatelessWidget {
  const next({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
          },
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 14,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.red,
            ),
            child: Center(
              child: Text("SIGN IN", style: TextStyle(color: Colors.white),),
            ),
          ),
        ),
        Style.distence_height5,
        TextButton(
            onPressed: () {},
            child: Text(
              "Forget Password",
              style: TextStyle(color: Colorscode.forgetbuttoncolor),
            )),
        RichText(
            text: TextSpan(
                text: "Don't have an account?",
                style: Style.defaulttext500w,
                children: [
              WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => registration_1()));
                      },
                      child: Text(" Sign Up",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colorscode.primary_color))))
            ]))
      ],
    );
  }
}
