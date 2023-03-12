import 'package:ev_charging_app/screens/login_page.dart';
import 'package:ev_charging_app/screens/signup_page.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {Size size = MediaQuery.of(context).size;
  Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: size.height*0.1,),
            SizedBox(
              width: size.width*0.4,
              child: Image.asset('assets/images/ev_logo.png'),
            ),
            SizedBox(height: size.height*0.05,),
            SizedBox(
              height: size.height*0.06,
              width: size.width*0.5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 6,backgroundColor: Colors.white,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  );
                },
                child: Text('Login',style: TextStyle( fontSize: size.width * 0.05,
                    fontFamily: 'Rubik',color:  Color(0xFF67BC33)),
              ),),
            ),
            SizedBox(height: size.height*0.05,),
            SizedBox(
              height: size.height*0.06,
              width: size.width*0.5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 6,backgroundColor: Colors.white,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignupScreen();
                      },
                    ),
                  );
                },
                child: Text('SignUp',style: TextStyle( fontSize: size.width * 0.05,
                    fontFamily: 'Rubik',color:  Color(0xFF67BC33)),
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
