import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRcodeExample extends StatefulWidget {
  const QRcodeExample({super.key});

  @override
  State<QRcodeExample> createState() => _QRcodeExampleState();
}

class _QRcodeExampleState extends State<QRcodeExample> {
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
      appBar: AppBar(
        title: Text('QR Code Example'), 
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            QrImageView(
              data: 'Aditya Khodabhai Rajput.',
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
