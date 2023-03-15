import 'package:ev_charging_app/components/progress_bar.dart';
import 'package:ev_charging_app/constants.dart';
import 'package:flutter/material.dart';

class MyVehiclesScreen extends StatefulWidget {
  const MyVehiclesScreen({
    Key? key,
  }) : super(key: key);

  @override
  _MyVehiclesScreenState createState() => _MyVehiclesScreenState();
}

class _MyVehiclesScreenState extends State<MyVehiclesScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SineWave',
          style: TextStyle(fontFamily: 'Rubik', color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
          EdgeInsets.only(left: size.width * 0.05, right: size.width * 0.05),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "My Vehicles",
                  style: TextStyle(
                    fontSize: size.width * 0.07,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              SizedBox(
                width: size.width * 0.7,
                child: Image.asset('assets/images/chetak.png'),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Bajaj Chetak",
                  style: TextStyle(
                    fontSize: size.width * 0.05,
                    color: Colors.indigo,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Rubik",
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              const ProgressArea(),
              SizedBox(
                height: size.height * 0.04,
              ),
              // Center(
              //     child: SizedBox(
              //       height: size.height*0.1,
              //       child: SfRadialGauge(
              //           axes: <RadialAxis>[
              //             RadialAxis(minimum: 0,maximum: 150,
              //                 ranges: <GaugeRange>[
              //                   GaugeRange(startValue: 0,endValue: 50,color: Colors.green,startWidth: 10,endWidth: 10,),
              //                   GaugeRange(startValue: 50,endValue: 100,color: Colors.orange,startWidth: 10,endWidth: 10),
              //                   GaugeRange(startValue: 100,endValue: 150,color: Colors.red,startWidth: 10,endWidth: 10)],
              //                 pointers: <GaugePointer>[NeedlePointer(value:90,needleEndWidth: size.width*0.015,)],
              //                 annotations: <GaugeAnnotation>[
              //                   GaugeAnnotation(widget: Container(child:
              //                   Text('90',style: TextStyle(fontSize:size.width*0.04,fontWeight:FontWeight.bold))),
              //                       angle: 90,positionFactor: 0.5)]
              //             )]
              //       ),
              //     )
              // ),
              Container(
                width: size.width * 0.95,
                height: size.height * 0.17,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(size.width * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'EV Charging Station',
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width * 0.06,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.016,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.info,
                                color: Colors.red,
                                size: size.width * 0.12,
                              ),
                              SizedBox(
                                width: size.width * 0.01,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Battery Specification :  3kWh',
                                    style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.w300,
                                      fontSize: size.width * 0.05,
                                    ),
                                  ),
                                  Text(
                                    'Voltage: 220V',
                                    style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.w300,
                                      fontSize: size.width * 0.05,
                                    ),
                                  ),
                                  Text(
                                    'Current: __A',
                                    style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.w300,
                                      fontSize: size.width * 0.05,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                      height: size.height * 0.1,
                      width: size.width * 0.3,
                      child: Container(
                        color: Colors.green,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.battery_charging_full_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(height: size.height*0.01,),
                            Text(
                              'Charging',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.04,
                              ),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                      height: size.height * 0.1,
                      width: size.width * 0.3,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.history,
                              color: Colors.white,
                            ),
                            SizedBox(height: size.height*0.01,),
                            Text(
                              'Waiting',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.04,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.grey,
                      )),
                  SizedBox(
                      height: size.height * 0.1,
                      width: size.width * 0.3,
                      child: Container(
                        color: Colors.grey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(height: size.height*0.01,),
                            Text(
                              '  Charging \nCompleted',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.04,
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
