import 'dart:math';

import 'package:flutter/material.dart';

class Formol {
  int? hight;
  double? weight;
  Formol({this.hight, this.weight});

  double mosahebe(int hight, double weight) {
    double resultfinal;

    resultfinal = weight / pow(hight / 100, 2);

    return resultfinal;
  }

  finaly(
    int resullttt,
  ) {
    String text;

    if (resullttt < 18.5) {
      text = "Wow! You are underweight\n you need to get better";
    } else if (resullttt > 18.0 && resullttt < 24.9) {
      text = "Congratulations!Your body is\n in the most ideal state";
    } else if (resullttt > 25 && resullttt < 29.9) {
      text = "Oh! You are prone to overweight\n you need to take more care";
    } else if (resullttt > 30.0 && resullttt < 39.9) {
      text =
          "Oh my god! You have \ngained a lot of weight\n you need to be very careful";
    } else {
      text =
          "Oh my god! You have \ngained a lot of weight\n you need to be very careful";
    }
    return text;
  }

  Color textcolor(
    int resullttt,
  ) {
    Color color;
    if (resullttt < 18.5) {
      color = Colors.amber.shade900;
    } else if (resullttt > 18.0 && resullttt < 24.9) {
      color = Colors.green.shade400;
    } else if (resullttt > 25 && resullttt < 29.9) {
      color = Colors.deepOrange.shade400;
    } else if (resullttt > 30.0 && resullttt < 39.9) {
      color = Colors.red.shade600;
    } else {
      color = Colors.red.shade900;
    }
    return color;
  }
}
