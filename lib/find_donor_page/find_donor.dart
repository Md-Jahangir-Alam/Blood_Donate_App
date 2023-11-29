import 'package:flutter/material.dart';
import 'package:it_1/utilits/colors.dart';
import 'package:it_1/utilits/style.dart';
import '../Widgets/dropdown_menu.dart';
import 'package:group_button/group_button.dart';



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
              GroupButton(
                options: GroupButtonOptions(
                  spacing: 30,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  selectedBorderColor: Colors.lightBlue,
                  unselectedBorderColor: Colors.lightBlue,
                ),
                maxSelected: 1,                    isRadio: false,
                onSelected: (index, isSelected, isRadio) => print('button is selected'),
                buttons: ["A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-"],
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
