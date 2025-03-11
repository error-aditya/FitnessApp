import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  bool? select = null;
  bool select1 = false;
  bool select2 = false;
  void selectCheckbox() {
    setState(() {
      if (select1 && select2) {
        select = true; // All checked → Parent checked
      } else if (!select1 && !select2) {
        select = false; // All unchecked → Parent unchecked
      } else {
        select = null; // Mixed → Parent indeterminate
      }
    });
  }

  void selectAll(bool? value) {
    setState(() {
      if (value == true) {
        select = true;
        select1 = true;
        select2 = true;
      } else {
        select = false;
        select1 = false;
        select2 = false;
      }
    });
  }

  @override
  // single check box
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text('CheckBox')),
  //     body: Center(
  //       child: Checkbox(
  //         checkColor: Colors.white,
  //         value: select,
  //         semanticLabel: 'Option Selection',
  //         onChanged: (bool? value) {
  //           setState(() {
  //             select = value!;
  //           });
  //         },
  //         splashRadius: 2000,
  //       ),
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TriState CheckBox'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: Text('Select All'),
              controlAffinity: ListTileControlAffinity.leading,
              tristate: true,
              value: select,
              onChanged: selectAll,
            ),
            CheckboxListTile(
              title: Text('option 1'),
              controlAffinity: ListTileControlAffinity.leading,
              tristate: true,
              value: select1,
              onChanged: (value) {
                setState(() {
                  select1 = value!;
                  selectCheckbox();
                });
              },
            ),
            CheckboxListTile(
              title: Text('option 2'),
              controlAffinity: ListTileControlAffinity.leading,
              tristate: true,
              value: select2,
              onChanged: (value) {
                setState(() {
                  select2 = value!;
                  selectCheckbox();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
