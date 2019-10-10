import 'package:flutter/material.dart';
import 'package:day_8_starter/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ResuseableCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.mars,  size: 120,),
                          Text('MALE', style: TextStyle(fontSize: 32),)
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ResuseableCard(
                    child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.venus,  size: 120,),
                          Text('FEMALE', style: TextStyle(fontSize: 32),)
                        ],
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
          Expanded(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ResuseableCard(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ResuseableCard(),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ResuseableCard(),
                  ),
                ),
              ],

            ),
          ),


        ],
      )

    );
  }
}

class ResuseableCard extends StatelessWidget {

 final Widget child;
 final Color color;
 ResuseableCard({this.color = const Color(0xFF1D1F31), this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:BorderRadius.all(Radius.circular(12)),
        color: color,
      ),

      child: child,
    );
  }
}
