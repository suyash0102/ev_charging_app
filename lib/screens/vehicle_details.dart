import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:ev_charging_app/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class VehicleDetail extends StatefulWidget {
  const VehicleDetail({Key? key}) : super(key: key);

  @override
  State<VehicleDetail> createState() => _VehicleDetailState();
}

class _VehicleDetailState extends State<VehicleDetail> {
  String dropdownValue ="2 Wheeler";
  List<String> vehicleType = [
    '2 Wheeler',
    '3 Wheeler',
    '4 Wheeler',
  ];
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
              child: Text('Vehicle Details',
                  style: TextStyle(
                      fontSize: size.width * 0.08,
                      fontFamily: 'Rubik',
                      color: Colors.black)),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Text('Vehicle Type',
                style: TextStyle(
                    fontSize: size.width * 0.05,
                    fontFamily: 'Rubik',
                    color: Colors.black)),
            SizedBox(height: size.height*0.01,),
        DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_drop_down),
          elevation: 5,
          style: TextStyle(color: Colors.black, fontFamily: "Rubik",
            fontSize: size.width * 0.04,),
          underline: Container(
            height: 2,
            color: Color(0xFF67BC33),
          ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: vehicleType.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
            SizedBox(height: size.height*0.01,),
            Text('Vehicle Model No.',
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
                    hintText: "M1234GH",
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
                    fontFamily: "Rubik",
                    fontSize: size.width * 0.04,
                  )),
            ),
            SizedBox(height: size.height*0.01,),
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
                        return const HomeScreen();
                      },
                    ),
                  );
                },
                child: Text('Get Started',style: TextStyle( fontSize: size.width * 0.05,
                    fontFamily: 'Rubik',color:  Colors.white),
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
