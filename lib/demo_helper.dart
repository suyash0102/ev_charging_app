import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:ev_charging_app/screens/onboarding_page.dart';
import 'package:flutter/material.dart';

enum DemoType {
  custom,
}

// ignore: must_be_immutable
class DemoHelper extends StatefulWidget {
  DemoHelper({super.key, required this.demoType});

  DemoType demoType;

  @override
  State<DemoHelper> createState() => _DemoHelperState();
}

class _DemoHelperState extends State<DemoHelper> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    switch (widget.demoType) {
      case DemoType.custom:
        return FlutterSplashScreen(
          duration: const Duration(milliseconds: 2000),
          defaultNextScreen: const OnboardingPage(),
          backgroundColor: Colors.white,
          splashScreenBody: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height*0.03,
                ),
                const Spacer(),
                SizedBox(
                  width: size.width*0.7,
                  child: Image.asset('assets/images/ev_logo.png'),
                ),
                Text(
                  'Sinewave',
                  style: TextStyle(
                    color: Color(0xFF67BC33),
                      fontSize: orientation == Orientation.portrait
                          ? size.width * 0.1
                          : size.width * 0.01,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w200),
                ),
                const Spacer(),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        );

      default:
        return Container();
    }
  }
}