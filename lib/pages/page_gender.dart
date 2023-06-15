import 'package:bmi/class/addtext.dart';
import 'package:bmi/pages/page_kg.dart';
import 'package:bmi/widgets/const.dart';

import 'package:flutter/material.dart';

class page_gender extends StatefulWidget {
  const page_gender({super.key});
  static int id = 1;
  @override
  State<page_gender> createState() => _page_genderState();
}

int number = 0;
int idd = page_gender.id;
final ExpansionTileController controller = ExpansionTileController();

class _page_genderState extends State<page_gender> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: backcolor,
            body: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 130, top: 40),
                child: textadd("HIGHT"),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Image.asset("assets/images/$idd.png"),
                    ),
                    Container(
                      width: 200,
                      child: ExpansionTile(
                        controller: controller,
                        title: Text(
                          'HIGHT  _  $number',
                          style: TextStyle(color: Colors.black),
                        ),
                        children: [
                          Container(
                            color: Colors.white60,
                            alignment: Alignment.center,
                            height: 450,
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                for (var i = 130; i < 200; i++)
                                  Padding(
                                    padding: const EdgeInsets.only(left: 70),
                                    child: ListTile(
                                        onTap: () {
                                          setState(() {
                                            if (controller.isExpanded) {
                                              number = i;
                                              controller.collapse();
                                            } else {
                                              controller.expand();
                                            }
                                          });
                                        },
                                        title: Text(
                                          i.toString(),
                                          style: TextStyle(
                                              color: Colors.amber.shade700,
                                              fontSize: 26),
                                        )),
                                  )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 50,
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {});
                        Navigator.pop(context);
                      },
                      child: Text(
                        "BACK",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 50,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => page_kg()));
                      },
                      child: Text(
                        "NEXT",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ])));
  }
}
