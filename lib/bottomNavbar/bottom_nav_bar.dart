import 'package:flutter/material.dart';


class bottom_nav extends StatefulWidget {
  const bottom_nav({Key? key}) : super(key: key);

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {

  var _currentindex = 0;


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentindex,
      onTap: (index){
        setState(() {
          _currentindex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.calendar_today_outlined, size: 25,),
            label: ""
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.comment, size: 25,),
            label: ""
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.follow_the_signs_outlined, size: 25,),
            label: ""
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, size: 25,),
            label: ""
        ),
      ],);
  }
}
