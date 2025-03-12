import 'package:flutter/material.dart';

class LinearProgressIndicatorExample extends StatefulWidget {
  const LinearProgressIndicatorExample({super.key});

  @override
  State<LinearProgressIndicatorExample> createState() =>
      _LinearProgressIndicatorExampleState();
}

class _LinearProgressIndicatorExampleState
    extends State<LinearProgressIndicatorExample>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool check = false;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..addListener(() {
            setState(() {});
          })
          ..repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Indicators')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250,
              child: LinearProgressIndicator(
                value: check ? controller.value : null,
                // trackGap: 5,
              ),
            ),
            SizedBox(height: 50),
            SwitchListTile(
              value: check,
              onChanged: (bool value) {
                setState(() {
                  check = value;
                  if (check) {
                    controller.stop();
                  } else {
                    controller..forward(from:controller.value)..repeat();
                  }
                });
              },
            ),
            SizedBox(height: 50),
            Container(
              width: 250,
              child: LinearProgressIndicator(
                value: controller.value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
