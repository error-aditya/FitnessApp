import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Switch Example'), centerTitle: true),
      body: Center(
        child: Switch(
          value: change,
          onChanged: (value) {
            setState(() {
              change = value;
            });
          },
        ),
      ),
    );
  }
}
