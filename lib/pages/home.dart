import 'package:credpal_ui_challenge/widgets/popup_button.dart';
import 'package:credpal_ui_challenge/utils/colors.dart';
import 'package:credpal_ui_challenge/utils/styles.dart';
import 'package:credpal_ui_challenge/widgets/current_stats.dart';
import 'package:credpal_ui_challenge/widgets/custom_divider.dart';
import 'package:credpal_ui_challenge/widgets/daily_excercise.dart';
import 'package:credpal_ui_challenge/widgets/text_subtitle.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 36, right: 36, top: 24.0),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: orange,
                            maxRadius: 18,
                            backgroundImage:
                                AssetImage("assets/images/profile_image.jpg"),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Hello Izedomi",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: bunkerBlack),
                          )
                        ],
                      ),
                      PopupButton()
                    ]),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Stats",
                            style: TextStyle(
                                color: bunkerBlack,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -1.5)),
                        CustomDivider(Colors.cyan)
                      ],
                    ),
                    SizedBox(width: 8),
                    Text("Muscles",
                        style: TextStyle(
                            color: silverGrey,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -1.5))
                  ],
                ),
                SizedBox(height: 35),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "58",
                      style: TextStyle(
                          color: bunkerBlack,
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -1.5),
                    ),
                    SizedBox(height: 8),
                    TextSubTitle("Workouts Completed")
                  ],
                ),
                SizedBox(height: 48),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: '72.4',
                                style: TextStyle(
                                  color: bunkerBlack,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: 'kg', style: metricStyle)
                                ]),
                          ),
                          SizedBox(height: 10),
                          TextSubTitle("Current Weight")
                        ],
                      ),
                    ),
                    Flexible(
                        flex: 7,
                        child: CustomDivider(Colors.grey.shade100,
                            height: 45, width: 3)),
                    Flexible(
                      flex: 7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "7.6",
                                style: TextStyle(
                                  color: bunkerBlack,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 1),
                              Text("kg", style: metricStyle)
                            ],
                          ),
                          SizedBox(height: 8),
                          Stack(
                            children: [
                              CustomDivider(Colors.grey.shade300,
                                  width: double.infinity, height: 3, radius: 2),
                              CustomDivider(orange,
                                  width: 55, height: 3, radius: 2)
                            ],
                          ),
                          SizedBox(height: 8),
                          TextSubTitle("Left to Gain")
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CurrentStats(
                        bgColor: lightOrange,
                        icon: Icons.lightbulb,
                        iconColor: orange,
                        title: "12.6K",
                        metric: "cal",
                        subTitle: "Burned",
                      ),
                      CurrentStats(
                        bgColor: lightPurpleBlue,
                        icon: Icons.animation_outlined,
                        iconColor: purpleBlue,
                        title: "270K",
                        metric: "kg",
                        subTitle: "Lifted",
                      ),
                      CurrentStats(
                        bgColor: lightCyanBlue,
                        icon: Icons.add_task,
                        iconColor: cyanBlue,
                        title: "13",
                        metric: "weeks",
                        subTitle: "Training",
                      )
                    ]),
                SizedBox(height: 70),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DailyExcercise(
                          month: "AUG",
                          day: "17",
                          title: "Recent: Chest & Legs",
                          subTitle: "8 Excercises",
                          bgColor: purpleBlue),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(6)),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                        ),
                        alignment: Alignment.center,
                      )
                    ]),
                SizedBox(height: 24)
                //ModalSheet()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
