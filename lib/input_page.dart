import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/constans.dart';

//creatin a enum
enum Gender {
  FEMALE,
  MALE,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.MALE;
                          });
                        },
                        color: selectedGender == Gender.MALE
                            ? cardColor
                            : inactiveCardColor,
                        myChild: CustomCard(
                            icon: FontAwesomeIcons.mars, lable: "Male"))),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    color: selectedGender == Gender.FEMALE
                        ? cardColor
                        : inactiveCardColor,
                    myChild:
                        CustomCard(icon: FontAwesomeIcons.venus, lable: "Male"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: cardColor, myChild: null),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: cardColor, myChild: null)),
                Expanded(child: ReusableCard(color: cardColor, myChild: null)),
              ],
            ),
          ),
          Container(
            color: bottomColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
