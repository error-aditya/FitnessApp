import 'package:flutter/material.dart';

class DropDownMenu extends StatelessWidget {
  const DropDownMenu({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DropDownMenu')),
      body: Center(
        child: DropdownButton(
          icon: Icon(Icons.more_vert),
          iconEnabledColor: Colors.white,
          iconSize: 30,
          // disabledHint: ,
          items: [
            DropdownMenuItem(enabled: false, value: 'item0', child: Text('Item 0')),
            DropdownMenuItem(value: 'item1', child: Text('Item 1')),
            DropdownMenuItem(value: 'item2', child: Text('Item 2')),
          ],
          onChanged: (value) {},
          // value: 'item1',
        ),
      ),
    );
  }
}
