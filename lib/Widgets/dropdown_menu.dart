import 'package:flutter/material.dart';
import 'package:it_1/utilits/colors.dart';

class dropdown_button extends StatefulWidget {
  const dropdown_button({Key? key}) : super(key: key);

  @override
  State<dropdown_button> createState() => _dropdown_buttonState();
}

class _dropdown_buttonState extends State<dropdown_button> {
  final items = <String>['One', 'Two', 'Three', 'Four'];
  String? valueChoose;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        border: Border.all(color: Colorscode.primary_color),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: DropdownButton(
            underline: SizedBox(),
            isExpanded: true,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 35,
            hint: Text("Select Division"),
            value: valueChoose,
            onChanged: (newValue) {
              setState(() {
                valueChoose = newValue;
              });
            },
            items: items.map((valueItem) {
              return DropdownMenuItem(value: valueItem, child: Text(valueItem));
            }).toList()),
      ),
    );
  }
}

class DropDown2 extends StatefulWidget {
  const DropDown2({Key? key}) : super(key: key);

  @override
  State<DropDown2> createState() => _DropDown2State();
}

class _DropDown2State extends State<DropDown2> {

  final items2 = <String>['One', 'Two', 'Three', 'Four'];
  String? valueChoose2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        border: Border.all(color: Colorscode.primary_color),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: DropdownButton(
            underline: SizedBox(),
            isExpanded: true,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 35,
            hint: Text("Select District"),
            value: valueChoose2,
            onChanged: (newValue) {
              setState(() {
                valueChoose2 = newValue;
              });
            },
            items: items2.map((valueItem) {
              return DropdownMenuItem(value: valueItem, child: Text(valueItem));
            }).toList()),
      ),
    );
  }
}

class DropDown3 extends StatefulWidget {
  const DropDown3({Key? key}) : super(key: key);

  @override
  State<DropDown3> createState() => _DropDown3State();
}

class _DropDown3State extends State<DropDown3> {

  final items3 = <String>['One', 'Two', 'Three', 'Four'];
  String? valueChoose3;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        border: Border.all(color: Colorscode.primary_color),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: DropdownButton(
            underline: SizedBox(),
            isExpanded: true,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 35,
            hint: Text("Select Thana"),
            value: valueChoose3,
            onChanged: (newValue) {
              setState(() {
                valueChoose3 = newValue;
              });
            },
            items: items3.map((valueItem) {
              return DropdownMenuItem(value: valueItem, child: Text(valueItem));
            }).toList()),
      ),
    );
  }
}


class DropDown4 extends StatefulWidget {
  const DropDown4({Key? key}) : super(key: key);

  @override
  State<DropDown4> createState() => _DropDown4State();
}

class _DropDown4State extends State<DropDown4> {

  final items4 = <String>['Male', 'Female', 'Others'];
  String? valueChoose4;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        border: Border.all(color: Colorscode.primary_color),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: DropdownButton(
            underline: SizedBox(),
            isExpanded: true,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 35,
            hint: Text("Your Gender"),
            value: valueChoose4,
            onChanged: (newValue) {
              setState(() {
                valueChoose4 = newValue;
              });
            },
            items: items4.map((valueItem) {
              return DropdownMenuItem(value: valueItem, child: Text(valueItem));
            }).toList()),
      ),
    );
  }
}


class DropDown5 extends StatefulWidget {
  const DropDown5({Key? key}) : super(key: key);

  @override
  State<DropDown5> createState() => _DropDown5State();
}

class _DropDown5State extends State<DropDown5> {

  final items5 = <String>['A+', 'A-', 'B+', 'B-','O+','O-','AB+','AB-'];
  String? valueChoose5;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        border: Border.all(color: Colorscode.primary_color),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: DropdownButton(
            underline: SizedBox(),
            isExpanded: true,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 35,
            hint: Text("Select Blood"),
            value: valueChoose5,
            onChanged: (newValue) {
              setState(() {
                valueChoose5 = newValue;
              });
            },
            items: items5.map((valueItem) {
              return DropdownMenuItem(value: valueItem, child: Text(valueItem));
            }).toList()),
      ),
    );
  }
}




