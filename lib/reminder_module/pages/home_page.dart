import 'package:ev_charging_app/reminder_module/controllers/hive_controller.dart';
import 'package:ev_charging_app/reminder_module/models/reminder_model.dart';
import 'package:ev_charging_app/reminder_module/pages/reminder_page.dart';
import 'package:ev_charging_app/reminder_module/utils/helpers.dart';
import 'package:ev_charging_app/reminder_module/widgets/empty_page.dart';
import 'package:ev_charging_app/reminder_module/widgets/reaminder_card.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';


class ReminderHomePage extends StatefulWidget {
  const ReminderHomePage({Key? key}) : super(key: key);

  @override
  _ReminderHomePageState createState() => _ReminderHomePageState();
}

class _ReminderHomePageState extends State<ReminderHomePage> {
  ReminderBox reminderBox = ReminderBox();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reminders'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: reminderBox.box.listenable(),
              builder: (context, Box<Reminder> reminders, widget) {
                List<Reminder> listFromBox = reminders.values.toList();
                //reversing the list to show new items on top
                List<Reminder> remindersList = listFromBox.reversed.toList();
                if (remindersList.isNotEmpty) {
                  return ListView.builder(
                    padding: EdgeInsets.all(12.0),
                    physics: const BouncingScrollPhysics(),
                    itemCount: remindersList.length,
                    itemBuilder: (context, index) {
                      var reminder = remindersList[index];
                      return ReminderCard(reminder);
                    },
                  );
                } else {
                  return EmptyPage();
                }
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'fab',
        child: Icon(EvaIcons.plus),
        onPressed: () => toPage(context, ReminderPage(isEdit: false)),
      ),
    );
  }
}
