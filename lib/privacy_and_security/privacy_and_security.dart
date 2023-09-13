import 'package:flutter/material.dart';
import 'package:it_1/Widgets/text_widget.dart';

class privacy extends StatelessWidget {
  const privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: text_widget("Privacy & Security"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_add, size: 20,))
        ],
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
