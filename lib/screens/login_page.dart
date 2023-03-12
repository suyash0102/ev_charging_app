import 'package:ev_charging_app/screens/vehicle_details.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: EdgeInsets.all(size.width*0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height*0.04,),
            Center(
              child: Text('Login',
                  style: TextStyle(
                      fontSize: size.width * 0.08,
                      fontFamily: 'Rubik',
                      color: Colors.black)),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Text('Email Address',
                style: TextStyle(
                    fontSize: size.width * 0.05,
                    fontFamily: 'Rubik',
                    color: Colors.black)),
            SizedBox(height: size.height*0.01,),
            SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.06,
              child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "xyz@gmail.com",
                    hintStyle: TextStyle(
                        fontSize: size.width * 0.04,
                        fontFamily: 'Rubik',
                        color: const Color(0xFF67BC33)),
                    fillColor: Colors.white,
                    contentPadding:
                    EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                    ),
                  ),
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: size.width * 0.04,
                  )),
            ),
            SizedBox(height: size.height*0.01,),
            Text('Password',
                style: TextStyle(
                    fontSize: size.width * 0.05,
                    fontFamily: 'Rubik',
                    color: Colors.black)),
            SizedBox(height: size.height*0.01,),
            SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.06,
              child: TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "******",
                    hintStyle: TextStyle(
                        fontSize: size.width * 0.04,
                        fontFamily: 'Rubik',
                        color: const Color(0xFF67BC33)),
                    fillColor: Colors.white,
                    contentPadding:
                    EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                    ),
                  ),
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: size.width * 0.04,
                  )),
            ),
            SizedBox(height: size.height*0.01,),
            Text('Forgot Password?',
                style: TextStyle(
                    fontSize: size.width * 0.05,
                    fontFamily: 'Rubik',
                    color: Colors.black)),
            SizedBox(height: size.height*0.02,),
            SizedBox(
              height: size.height*0.06,
              width: size.width*0.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 6,backgroundColor:  Color(0xFF6ABF8C)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const VehicleDetail();
                      },
                    ),
                  );
                },
                child: Text('Login',style: TextStyle( fontSize: size.width * 0.05,
                    fontFamily: 'Rubik',color:  Colors.white),
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
