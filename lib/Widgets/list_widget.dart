import 'package:flutter/material.dart';

Widget list_tile(String text, ){
  return ListTile(
    title: Text(text),
    trailing: Icon(Icons.forward_outlined, size: 20,)
  );
}