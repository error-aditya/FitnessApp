import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';


class BottomSheetExample extends StatefulWidget {
  @override
  _BottomSheetExampleState createState() => _BottomSheetExampleState();
}
class _BottomSheetExampleState extends State<BottomSheetExample> with TickerProviderStateMixin {
  // const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomSheet')),
      bottomSheet: BottomSheet(
        showDragHandle: true,
        enableDrag: true,
        
        animationController: AnimationController(
          duration: const Duration(seconds: 1),
          vsync: this,
        ),
        onClosing: () {},
        builder: (context) {
          return Container(
            height: 200,
            color: Colors.blue,
          );
        },
      ),
    );
  }
}
