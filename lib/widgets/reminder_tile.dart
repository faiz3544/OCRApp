import 'package:flutter/material.dart';

class ReminderTile extends StatelessWidget {
  final String reminderText;

  ReminderTile({required this.reminderText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.alarm),
      title: Text(reminderText),
      trailing: Icon(Icons.check_circle_outline),
      onTap: () {
        // Mark as completed or navigate to reminder details
      },
    );
  }
}
