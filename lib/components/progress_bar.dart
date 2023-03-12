import 'package:ev_charging_app/components/radial_painter.dart';
import 'package:ev_charging_app/constants.dart';
import 'package:flutter/material.dart';

class ProgressArea extends StatelessWidget {
  const ProgressArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: size.width * 0.05,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '33.3%',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "Rubik",
                      fontSize: size.width * 0.04),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Icon(
                  Icons.circle,
                  color: kPrimaryColor,
                  size: size.height * 0.02,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  'Battery \nCharged',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Rubik",
                      fontSize: size.width * 0.03),
                ),
              ],
            ),
            SizedBox(
              width: size.width * 0.2,
            ),
            SizedBox(
              height: size.width * 0.1,
              child: CustomPaint(
                foregroundPainter: RadialPainter(
                  bgColor: Colors.black.withOpacity(0.1),
                  lineColor: kPrimaryColor,
                  percent: 0.33,
                  width: size.width * 0.04,
                ),
                child: const Center(
                  child: Text(
                    '      ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '66.7%',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "Rubik",
                      fontSize: size.width * 0.04),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.black.withOpacity(0.2),
                  size: size.height * 0.02,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  'Battery \nUncharged',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Rubik",
                      fontSize: size.width * 0.03),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
