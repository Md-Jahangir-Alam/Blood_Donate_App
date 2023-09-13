import 'package:flutter/material.dart';
import 'package:it_1/user_data/user_data_page.dart';
import 'package:it_1/utilits/colors.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../utilits/style.dart';
import 'package:it_1/utilits/images.dart';

class otp_check extends StatelessWidget {
  const otp_check({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify Phone", style: TextStyle(color: Colorscode.pagebackgroundcolor),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colorscode.primary_color,
      ),

      body: Container(
        color: Colorscode.pagebackgroundcolor,
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Style.distence_height20,
                Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Image.asset(images.login_image)),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: PinFieldAutoFill(
                    keyboardType: TextInputType.number,
                    decoration: BoxLooseDecoration(
                        strokeColorBuilder: PinListenColorBuilder(Colors.black, Colors.black26),
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        bgColorBuilder: FixedColorBuilder(
                            Colors.white),
                        strokeWidth: 1.0
                    ),
                    codeLength: 4,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Userdata()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(color: Colorscode.primary_color, borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    child: Center(child: Text("Verify", style: TextStyle(color: Colorscode.pagebackgroundcolor, fontSize: 20),)),
                  ),
                ),

                RichText(
                    text: TextSpan(
                        text: "Didn't recieve code ?",
                        style: Style.smalltext500w,
                        children: [
                          WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: TextButton(
                                  onPressed: () {

                                  },
                                  child: Text("Resend",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colorscode.primary_color))))
                        ])),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
