import 'package:credpal_ui_challenge/models/daily_exercise.dart';
import 'package:credpal_ui_challenge/utils/colors.dart';
import 'package:credpal_ui_challenge/widgets/daily_excercise.dart';
import 'package:credpal_ui_challenge/widgets/rounded_container_icon.dart';
import 'package:flutter/material.dart';

import '../data.dart';
import '../animation/custom_rect_tween.dart';

class PopupCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Hero(
        tag: "popup-hero",
        createRectTween: (begin, end) {
          return CustomRectTween(begin: begin, end: end);
        },
        child: Material(
          color: Colors.white.withOpacity(0), //AppColors.accentColor,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.5,
            margin: EdgeInsets.only(left: 3, right: 3),
            child: ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            new BoxShadow(
                                color: Colors.white.withOpacity(.2),
                                blurRadius: 6.0,
                                spreadRadius: 1,
                                offset: Offset(1, 1)),
                          ]),
                      margin: EdgeInsets.all(24),
                      child: LayoutBuilder(builder: (context, constraints) {
                        if (constraints.maxWidth >= 250) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 36),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    RoundedContanerIcon(
                                        bgColor: lightOrange,
                                        iconColor: orange,
                                        height: 40,
                                        width: 40,
                                        iconSize: 20,
                                        icon: Icons.dashboard),
                                    SizedBox(width: 24),
                                    Text("New Workout",
                                        style: TextStyle(
                                            color: bunkerBlack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: -0.5))
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("From Previous",
                                        style: TextStyle(
                                            color: bunkerBlack,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: -0.7)),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 12,
                                      ),
                                      alignment: Alignment.center,
                                    )
                                  ],
                                ),
                                SizedBox(height: 150),
                                InkWell(
                                  onTap: () => Navigator.pop(context),
                                  // onTap: () => Navigator.push(
                                  //     context, ScaleRoute(page: HomePage())),
                                  child: Row(
                                    children: [
                                      Icon(Icons.logout,
                                          size: 20, color: silverGrey),
                                      SizedBox(width: 6),
                                      Text(
                                        "CLOSE",
                                        style: TextStyle(
                                            color: bunkerBlack,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        } else {
                          return Container();
                        }
                      }),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 170),
                        height: 110,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children:
                                List.generate(dailyExercises.length, (index) {
                              DailyExcerciseModel excercise =
                                  dailyExercises[index];
                              return Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  //margin: EdgeInsets.only(left: 6),
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    child: DailyExcercise(
                                      bgColor: excercise.bgColor,
                                      month: excercise.month,
                                      day: excercise.day,
                                      title: excercise.title,
                                      subTitle: excercise.subTitle,
                                      dividerIsTriple: false,
                                    ),
                                    //width: 200,
                                  ));
                            }))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
