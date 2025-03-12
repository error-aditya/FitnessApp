import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

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
            QrImageView(
              data: 'Hello World, I am Aditya.',
              version: 2,
              dataModuleStyle: QrDataModuleStyle(
                dataModuleShape: QrDataModuleShape.square,
                color: Colors.black,
              ),
              size: 200.0,
              backgroundColor: Colors.white,
              constrainErrorBounds: true,
              eyeStyle: QrEyeStyle(
                eyeShape: QrEyeShape.circle,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
