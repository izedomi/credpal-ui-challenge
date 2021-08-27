import 'package:credpal_ui_challenge/animation/custom_rect_tween.dart';
import 'package:credpal_ui_challenge/widgets/popup_card.dart';
import 'package:credpal_ui_challenge/utils/colors.dart';
import 'package:credpal_ui_challenge/utils/curves.dart';
import 'package:flutter/material.dart';
import '../animation/hero_dialog_route.dart';

class PopupButton extends StatelessWidget {
  const PopupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(HeroDialogRoute((context) {
          return PopupCard();
        }));
      },
      child: Hero(
        tag: "popup-hero",
        createRectTween: (begin, end) {
          return CustomRectTween(begin: begin, end: end);
        },
        flightShuttleBuilder: (
          BuildContext flightContext,
          Animation<double> animation,
          HeroFlightDirection flightDirection,
          BuildContext fromHeroContext,
          BuildContext toHeroContext,
        ) {
          //Hero toHero = toHeroContext.widget;

          // return FadeTransition(
          //   opacity: animation.drive(
          //     Tween<double>(begin: 0.0, end: 1.0).chain(
          //       CurveTween(
          //         curve:
          //             Interval(0.0, 1.0, curve: Curves.fastLinearToSlowEaseIn),
          //         //curve: Interval(0.0, 1.0, curve: Curves.bounceIn),
          //       ),
          //     ),
          //   ),
          //   child: toHeroContext.widget,
          // );
          return FadeTransition(
              opacity: animation.drive(
                Tween<double>(begin: 0.0, end: 1.0).chain(
                  CurveTween(
                    curve: Interval(0.0, 1.0, curve: ValleyQuadraticCurve()),
                  ),
                ),
              ),
              child: flightDirection == HeroFlightDirection.push
                  ? RotationTransition(
                      turns: animation,
                      child: toHeroContext.widget,
                    )
                  : ScaleTransition(
                      scale: animation.drive(
                        Tween<double>(begin: 0.0, end: 1.0).chain(
                          CurveTween(
                            curve:
                                Interval(0.0, 1.0, curve: BackQuadraticCurve()),
                          ),
                        ),
                      ),
                      child: toHeroContext.widget,
                    ));
        },
        child: Material(
          color: orange, //.accentColor,
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Container(
            padding: EdgeInsets.all(6),
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
