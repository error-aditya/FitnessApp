import 'package:flutter/material.dart';

class BadgeBox extends StatelessWidget {
  const BadgeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BadgeBox'),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Badge(
            offset: Offset(0, 0),
            label: Text('5'),
            isLabelVisible: true,
            child: IconButton(onPressed: () {}, icon: Icon(Icons.heart_broken)),
          ),
          Badge(
            offset: Offset(0, 0),
            label: Text('10'),
            isLabelVisible: true,
            child: IconButton(onPressed: () {}, icon: Icon(Icons.star)),
          ),
          Badge(
            offset: Offset(0, 0),
            label: Text('0'),
            isLabelVisible: true,
            child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          ),
        ],
      ),
    );
  }
}
