import 'package:flutter/material.dart';
import 'package:bmi_calculator/constans.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.icon, required this.lable, super.key});

  final IconData icon;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80),
        SizedBox(
          height: 15,
        ),
        Text(
          lable,
          style: lableTextStyle,
        ),
      ],
    );
  }
}
