import 'package:flutter/material.dart';
import 'package:it_1/Widgets/dropdown_menu.dart';
import 'package:it_1/utilits/colors.dart';
import 'package:it_1/utilits/style.dart';

class Userdata extends StatefulWidget {
  const Userdata({Key? key}) : super(key: key);

  @override
  State<Userdata> createState() => _UserdataState();
}

class _UserdataState extends State<Userdata> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colorscode.primary_color,
        elevation: 0,
        title: Text(
          "Registration",
          style: TextStyle(color: Colorscode.pagebackgroundcolor),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 12, right: 12, top: 12),
            child: Column(
              children: [
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colorscode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colorscode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    suffixIcon: Icon(
                      Icons.account_circle_outlined,
                      color: Colorscode.primary_color,
                    ),
                    hintText: "Full name",
                    hintStyle: TextStyle(color: Colorscode.textcolor),
                    labelText: "Full name",
                  ),
                ),
                Style.distence_height10,
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colorscode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colorscode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    suffixIcon: Icon(
                      Icons.email_outlined,
                      color: Colorscode.primary_color,
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colorscode.textcolor),
                    labelText: "Email",
                  ),
                ),
                Style.distence_height10,
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colorscode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colorscode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    suffixIcon: Icon(
                      Icons.lock,
                      color: Colorscode.primary_color,
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colorscode.textcolor),
                    labelText: "Password",
                  ),
                ),
                Style.distence_height10,
                dropdown_button(),
                Style.distence_height10,
                DropDown2(),
                Style.distence_height10,
                DropDown3(),
                Style.distence_height10,
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colorscode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colorscode.primary_color),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    suffixIcon: Icon(
                      Icons.location_city,
                      color: Colorscode.primary_color,
                    ),
                    hintText: "Address",
                    hintStyle: TextStyle(color: Colorscode.textcolor),
                    labelText: "Address",
                  ),
                ),
                Style.distence_height10,
                DropDown4(),
                Style.distence_height10,
                DropDown5(),
                Style.distence_height20,
                GestureDetector(
                  onTap: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 14 ,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Text("Submit", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
