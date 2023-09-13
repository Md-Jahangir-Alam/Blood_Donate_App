import 'package:flutter/material.dart';
import 'package:it_1/Widgets/text_widget.dart';

class terms_and_condition extends StatelessWidget {
  const terms_and_condition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: text_widget("Terms & Conditions"),
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
