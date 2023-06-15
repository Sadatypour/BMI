import 'package:flutter/material.dart';

class Addtext {
  String? textadd;
}

Row textadd(String textadd) {
  return Row(
    children: [
      Text(
        "SELECT YOUR",
        style: TextStyle(fontSize: 30),
      ),
      SizedBox(
        width: 5,
      ),
      Text(
        textadd,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      )
    ],
  );
}
