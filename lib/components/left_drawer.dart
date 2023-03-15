import 'package:ev_charging_app/reminder_module/pages/home_page.dart';
import 'package:ev_charging_app/screens/my_vehicles_screen.dart';
import 'package:ev_charging_app/screens/onboarding_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({
    Key? key,
  }) : super(key: key);

  // final User user;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: size.height * 0.1,
          ),
          Row(
            children: [
              SizedBox(
                  width: size.width*0.2,
                  child: Image.asset('assets/images/ev_logo.png')),
              Text(
                "Sinewave",
                style: TextStyle(
                    fontFamily: "Rubik",
                    color: kPrimaryColor,
                    fontSize: size.width * 0.07,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.05),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    size: size.width * 0.09,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Text(
                    "My Account",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        color: kPrimaryColor,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.05),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MyVehiclesScreen();
                    },
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.bike_scooter,
                    size: size.width * 0.09,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Text(
                    "My Vehicles",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        color: kPrimaryColor,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.05),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ReminderHomePage();
                    },
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.alarm,
                    size: size.width * 0.09,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Text(
                    "Set Reminder",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        color: kPrimaryColor,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.05),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    size: size.width * 0.09,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        color: kPrimaryColor,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.05),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.history,
                    size: size.width * 0.09,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Text(
                    "Charging History",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        color: kPrimaryColor,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 6, backgroundColor: kPrimaryColor),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const OnboardingPage();
                    },
                  ),
                );
              },
              child: Text(
                "LOGOUT",
                style:
                    TextStyle(fontFamily: "Rubik", fontSize: size.width * 0.05),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
