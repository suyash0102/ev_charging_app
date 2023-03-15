import 'package:ev_charging_app/reminder_module/models/reminder_model.dart';
import 'package:ev_charging_app/reminder_module/providers/reminder_provider.dart';
import 'package:ev_charging_app/reminder_module/utils/color_scheme.dart';
import 'package:ev_charging_app/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await Hive.initFlutter();
  Hive.registerAdapter(ReminderAdapter());
  await Hive.openBox<Reminder>('reminders');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ReminderProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Simple Reminder',
        theme: ThemeData(
          scaffoldBackgroundColor: lightColorScheme.background,
          useMaterial3: true,
          colorScheme: lightColorScheme,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

