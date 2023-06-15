import 'package:bmi/class/formol.dart';
import 'package:bmi/widgets/const.dart';
import 'package:flutter/material.dart';

import 'page_gender.dart';
import 'package:bmi/pages/page_kg.dart';

class resullt extends StatefulWidget {
  @override
  State<resullt> createState() => _resulltState();
}

Formol myformol = Formol();

final resullttt = myformol.mosahebe(number, weighttt);
final finallly = myformol.finaly(
  resullttt.ceil(),
);
final colortext = myformol.textcolor(resullttt.ceil());

class _resulltState extends State<resullt> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: backcolor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 80),
            child: Row(
              children: [
                Text("BMI YOUR    =",
                    style: TextStyle(
                        fontSize: 40, color: Colors.blueGrey.shade900)),
                SizedBox(
                  width: 20,
                ),
                Text(resullttt.toStringAsFixed(1),
                    style: TextStyle(
                        fontSize: 40, color: Colors.blueGrey.shade800)),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            finallly,
            style: TextStyle(color: colortext, fontSize: 30),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Image.asset("assets/images/12.png"),
          )
        ],
      ),
    ));
  }
}
