import 'package:flutter/material.dart';
import 'package:it_1/Widgets/text_widget.dart';
import 'package:it_1/utilits/colors.dart';
import 'package:it_1/utilits/style.dart';

class top_donor_page extends StatefulWidget {
  const top_donor_page({Key? key}) : super(key: key);

  @override
  State<top_donor_page> createState() => _top_donor_pageState();
}

class _top_donor_pageState extends State<top_donor_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: text_widget("Top Donors"),backgroundColor: Colors.red,),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colorscode.pagebackgroundcolor,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index){
                return Card(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colorscode.forgetbuttoncolor,
                            ),
                            Style.distence_width20,
                            text_widget("allData index\n name\ntoString"),
                            SizedBox(
                              width: 150,
                            ),
                            Column(
                              children: [
                                Icon(Icons.star, color: Colors.red, size: 20,),
                                Text("allData", style: TextStyle(color: Colorscode.textcolor, fontSize: 18),),
                              ],
                            )
                          ],
                        ),
                        Style.distence_height5,
                      ],
                    ),
                  ),
                );
              },
            )
        ),
      ),
    );
  }
}
