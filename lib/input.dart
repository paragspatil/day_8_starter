import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int gender; // Male = 0, Female = 1
  Color activeCardColor =  Color(0xFF1D1F31);
  Color inactiveCardColor =  Color(0xFF111328);
  Color activetextColor = Colors.white;
  Color inactivetextColor = Colors.white70;
  double _sliderValue = 183.0;
  @override
  Widget build(BuildContext context) {
    Color textcolormale = inactivetextColor;
    Color textcolorfemale = inactivetextColor;
    Color backgroundColorMale = inactiveCardColor;
    Color backgroundColorFemale = inactiveCardColor;

    if (gender == 0) {
      backgroundColorMale = activeCardColor;
      textcolormale = activetextColor;
    } else if (gender == 1) {
      backgroundColorFemale = activeCardColor;
      textcolorfemale = activetextColor;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 100,
                          color:  textcolormale,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(fontSize: 24,
                            color: textcolormale,
                          ),
                        )
                      ],
                    ),
                    color: backgroundColorMale,
                    tapCallback: () {
                      setState(() {
                        gender = 0;
                      });
                      print('Male selected');
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 100,
                            color: textcolorfemale,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(fontSize: 24,
                              color: textcolorfemale,
                          ),
                        )
                      ],
                    ),
                    color: backgroundColorFemale,
                    tapCallback: () {
                      setState(() {
                        gender = 1;
                      });

                      print('Female selected');
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(
                'HEIGHT',
                 style: TextStyle(fontSize: 24),
                 textAlign: TextAlign.center,
              ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.baseline,
                 textBaseline: TextBaseline.alphabetic,
                 children: <Widget>[
                   Text(
                     '${_sliderValue.toInt()}',
                     style: TextStyle(
                       fontSize: 42, fontWeight: FontWeight.bold)

                   ),
                   Text(
                     'cm', style: TextStyle(
                     fontSize: 24,
                   ),
                   )

                 ],
               ),
                  Slider(
                    activeColor: Colors.pink,
                    inactiveColor: Colors.white,
                    min: 110.0,
                    max: 210.0,
                    onChanged: (newRating) {
                      setState(() => _sliderValue = newRating);
                    },
                    value: _sliderValue,
                  ),
                ],

              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(
                  child: ReusableCard(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function tapCallback;

  ReusableCard(
      {this.color = const Color(0xFF1D1F31), this.child, this.tapCallback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapCallback,
      child: Container(
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: child,
      ),
    );
  }
}