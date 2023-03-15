import 'package:ev_charging_app/reminder_module/models/reminder_model.dart';
import 'package:hive/hive.dart';

class ReminderBox {
  Box<Reminder> box = Hive.box('reminders');

  void insertReminder(Reminder dream) => box.add(dream);

  void updateReminder(dynamic key, Reminder dream) => box.put(key, dream);

  void deleteReminder(int key) => box.delete(key);
}
