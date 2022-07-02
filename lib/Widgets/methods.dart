import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_task/Constants/constants.dart';

generateRandomColor1() {
  Random random = Random();
  double temp = random.nextDouble();
  backgroundColor1 = Color((temp * 0xFFFFFF).toInt()).withOpacity(1.0);
}

generateRandomColor2() {
  Random random = Random();
  double temp2 = random.nextDouble();
  backgroundColor2 = Color((temp2 * 0xFFFFFF).toInt()).withOpacity(1.0);
}