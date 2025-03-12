import 'package:flutter/material.dart';

class TimePickerExample extends StatefulWidget {
  const TimePickerExample({super.key});

  @override
  State<TimePickerExample> createState() => _TimePickerExampleState();
}

class _TimePickerExampleState extends State<TimePickerExample> {
  times() {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return TimePickerDialog(
          initialTime: TimeOfDay.now(),
          orientation: Orientation.landscape,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Time Picker Example'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                times();
                // showTimePicker(context: context, initialTime: TimeOfDay.now());
              },
              child: Text('Set Time'),
            ),
          ],
        ),
      ),
    );
  }
}
