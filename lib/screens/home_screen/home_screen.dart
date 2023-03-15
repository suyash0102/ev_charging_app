import 'package:ev_charging_app/screens/home_screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../components/left_drawer.dart';
import '../../constants.dart';


class HomeScreen extends StatefulWidget {
  // final User user;

  const HomeScreen({Key? key, }) : super(key: key);

  @override
  State createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  // late User user;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    var initializationSettingsAndroid =
    new AndroidInitializationSettings('@mipmap/ic_launcher');
    // user = widget.user;
    // userId=user.userID;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    List<Widget> widgetOptions = <Widget>[
const HomePage(),
      const HomePage(),
      const HomePage(),
    ];
    return Scaffold(
          drawer: LeftDrawer(),
          appBar: AppBar(
            title: const Text(
              'SineWave',
              style: TextStyle(fontFamily: 'Rubik', color: Colors.white),
            ),
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: kPrimaryColor,
            centerTitle: true,
          ),
          body: widgetOptions.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.home_filled),
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.history),
                icon: Icon(Icons.history),
                label: 'History',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.speaker_notes),
                icon: Icon(Icons.speaker_notes),
                label: 'Details',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: kPrimaryColor,
            onTap: _onItemTapped,
            selectedLabelStyle: const TextStyle(
              fontFamily: 'Rubik',
              color: kPrimaryColor,
            ),
            unselectedLabelStyle: const TextStyle(
              fontFamily: 'Rubik',
              color: kPrimaryColor,
            ),
          ),
    );
  }
}
