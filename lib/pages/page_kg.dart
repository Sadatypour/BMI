import 'package:bmi/class/addtext.dart';

import 'package:bmi/pages/result.dart';
import 'package:bmi/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';

class page_kg extends StatefulWidget {
  @override
  State<page_kg> createState() => _page_kgState();
}

double weighttt = 0;

class _page_kgState extends State<page_kg> {
  late WeightSliderController _controller;
  double weight = 30.0;

  @override
  void initState() {
    super.initState();
    _controller = WeightSliderController(
        initialWeight: weight, minWeight: 0, interval: 0.1);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: backcolor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 130, top: 40),
            child: textadd("WIGHT"),
          ),
          Container(
            height: 150,
            alignment: Alignment.center,
            child: Text(
              "${weight.toStringAsFixed(1)} kg",
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.w500, color: Colors.red),
            ),
          ),
          VerticalWeightSlider(
            controller: _controller,
            decoration: const PointerDecoration(
              width: 130,
              height: 3,
              largeColor: Color.fromARGB(255, 235, 18, 18),
              mediumColor: Color.fromARGB(246, 33, 32, 32),
              smallColor: Color.fromARGB(106, 24, 1, 1),
              gap: 20,
            ),
            onChanged: (double value) {
              setState(() {
                weight = value;
                weighttt = weight;
              });
            },
            indicator: Container(
              height: 5,
              width: 200,
              alignment: Alignment.centerLeft,
              color: Color.fromARGB(181, 244, 73, 73),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Image.asset("assets/images/5.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("back", style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                width: 100,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => resullt()));
                  },
                  child: Text(
                    "CALCULAT BMI",
                    style: TextStyle(fontSize: 28),
                  ))
            ],
          ),
        ],
      ),
    ));
  }
}
