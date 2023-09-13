import 'package:flutter/material.dart';
import 'package:it_1/Widgets/text_widget.dart';
import 'package:it_1/otp_page/otp_page_1.dart';
import 'package:it_1/utilits/colors.dart';
import 'package:it_1/utilits/images.dart';
import '../utilits/style.dart';


class registration_1 extends StatelessWidget {
  const registration_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colorscode.textcolor),
        title: text_widget("Continue with Phone"),backgroundColor: Colorscode.pagebackgroundcolor, elevation: 0, automaticallyImplyLeading: true,centerTitle: true,),
      body: Container(
        color: Colorscode.pagebackgroundcolor,
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Image.asset(images.login_image),
                    ),
                    Style.distence_height20,
                    text_widget("Welcome to Digital Shastho"),
                    Style.distence_height10,
                    text_widget("A health comers statform of Bangladesh"),
                    Style.distence_height15,
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colorscode.primary_color),
                            borderRadius:
                            BorderRadius.all(Radius.circular(12))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colorscode.primary_color),
                            borderRadius:
                            BorderRadius.all(Radius.circular(12))),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colorscode.primary_color,
                        ),
                        hintText: "01XXXXXXXXX",
                        hintStyle: TextStyle(color: Colorscode.textcolor),
                      ),
                    ),
                    Style.distence_height15,
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>otp_check()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 14,
                        decoration: BoxDecoration(color: Colorscode.primary_color, borderRadius: BorderRadius.all(Radius.circular(50.0))),
                        child: Center(child: Text("Continue", style: TextStyle(color: Colors.white, fontSize: 20),)),
                      ),
                    ),
                    Style.distence_height10,
                    text_widget("You'll receive a 4 digit code to verify next."),
                    RichText(
                        text: TextSpan(
                            text: "Already have an account ?",
                            style: Style.smalltext500w,
                            children: [
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>registration_1()));
                                      },
                                      child: Text("Login",
                                          style: TextStyle(color: Colorscode.primary_color))))
                            ]))
                  ],
                ),
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
