import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = kInactiveCardColor;
  Color femaleCardColour = kInactiveCardColor;
  Gender? selectedGender;
  int height = 180;
  void updateColor(Gender SelectedGender) {
    if (SelectedGender == Gender.male) {
      maleCardColour = kActiveCardColor;
      femaleCardColour = kInactiveCardColor;
    } else {
      maleCardColour = kInactiveCardColor;
      femaleCardColour = kActiveCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: null,
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colorCreated: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      iconType: FontAwesomeIcons.mars,
                      iconText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colorCreated: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: const IconContent(
                    iconType: FontAwesomeIcons.venus,
                    iconText: 'FEMALE',
                  ),
                )),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            colorCreated: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: kLableStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    Text('cm', style: kLableStyle),
                  ],
                ),
                Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: kBottomContainerColor,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue
                            .toInt(); //i could have also used round() method to change it to whole number
                      });
                    })
              ],
            ),
          )),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReusableCard(
                    colorCreated: kActiveCardColor,
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  colorCreated: kActiveCardColor,
                )),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: kBottomContainerColor,
                borderRadius: BorderRadius.circular(10.0)),
            margin: EdgeInsets.all(15.0),
            height: kBottomContainerHeight,
            width: double.infinity,
            child: TextButton(
                onPressed: () {},
                child: Container(
                    child: const Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                        'Calculate'))),
          ),
        ],
      ),
    );
  }
}
