import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vy_test/layout/colors.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'sirkelstoppested.dart';
import 'package:vy_test/stoppesteder/widgets/Stoppesteder_Tider.dart';
import 'package:vy_test/stoppesteder/widgets/Stoppesteder_Sted.dart';

class Stoppesteder extends StatelessWidget {
  Color _circleColor = vyColorGreen;
  List<Widget> _circleList = [
    SirkelStoppested(
      circleHeight: 15,
      circleWidth: 15,
      circleColor: vyColorGreen,
      childCircleWidth: 10,
      childCircleHeight: 10,
    )
  ];

  static const TextStyle _textStyle = TextStyle(fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
            width: 400,
            height: 50,
            child: Text(
              "Stoppesteder",
              style: TextStyle(
                  fontFamily: 'Segoe',
                  color: Color(0xff383E42),
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
            ),
          ),
          SizedBox(height: 20),
          Flexible(
            child: ListView(
              children: <Widget>[ Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20,),
                  StoppestederTider(),

                  Container(
                    height: 530,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 80),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Container(height: 510,
                          margin: EdgeInsets.only(top: 10),
                          child: StepProgressIndicator(
                            totalSteps: 100,
                            currentStep: 65,
                            direction: Axis.vertical,
                            size: 5,
                            padding: 0,
                            selectedColor: vyColorDarkGreen,
                            unselectedColor: vyColorGreen,
                            roundedEdges: Radius.circular(10),
                          ),
                        ),
                        StepProgressIndicator(
                          totalSteps: 17,
                          currentStep: 11,
                          direction: Axis.vertical,
                          size: 21,
                          padding: 5,
                          selectedColor: vyColorDarkGreen,
                          unselectedColor: vyColorGreen,
                          customStep: (index, color, _) => color == vyColorDarkGreen
                              ? SirkelStoppested(
                                circleHeight: 10,
                                circleWidth: 10,
                                circleColor: vyColorDarkGreen,
                                childCircleWidth: 9,
                                childCircleHeight: 9,
                              )
                              : SirkelStoppested(
                                circleHeight: 10,
                                circleWidth: 10,
                                circleColor: vyColorGreen,
                                childCircleWidth: 9,
                                childCircleHeight: 9,
                              ),
                        )
                      ],
                    ),
                  ),
                  
                  StoppestederSted(),
                  
                ],
              ),],
            ),
          ),
        ],
      ),
    );
  }
}
