import 'package:bmi/class/addtext.dart';
import 'package:bmi/pages/page_gender.dart';
import 'package:bmi/widgets/const.dart';
import 'package:flutter/material.dart';

class page_1 extends StatefulWidget {
  const page_1({super.key});

  @override
  State<page_1> createState() => _page_1State();
}

Container containergender({
  int? imagees,
  String? text,
}) {
  return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(top: 30, right: 60, left: 60),
      width: 450,
      height: 300,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            child: Image.asset("assets/images/$imagees.png"),
          ),
          Text(
            "$text",
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black),
          )
        ],
      ));
}

class _page_1State extends State<page_1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backcolor,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 40),
              child: textadd("GENDER"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  page_gender.id = 2;
                  idd = page_gender.id;
                });
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => page_gender()));
              },
              child: containergender(imagees: 11, text: "Famale"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  page_gender.id = 1;
                  idd = page_gender.id;
                });
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => page_gender()));
              },
              child: containergender(
                imagees: 10,
                text: "Male",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
