import 'package:flutter/material.dart';

class ExposedDropDownExample extends StatelessWidget {
  const ExposedDropDownExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exposed Drop Down Button')),
      body: Center(
        child: DropdownMenu(
          // helperText: 'dddd', // under the drop down box
          width: 300,
          label: Text('Label'),
          inputDecorationTheme: InputDecorationTheme(
            fillColor: const Color.fromARGB(107, 175, 156, 156),
            filled: true,
            floatingLabelStyle: TextStyle(
              color: Colors.white,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: const Color.fromARGB(255, 159, 148, 27)),
            ),
          ),
          initialSelection: 1,
          dropdownMenuEntries: [
            DropdownMenuEntry(value: 1, label: 'Option 1'),
            DropdownMenuEntry(value: 2, label: 'Option 2'),
            DropdownMenuEntry(value: 3, label: 'Option 3'),
            DropdownMenuEntry(value: 4, label: 'Option 4'),
            DropdownMenuEntry(value: 5, label: 'Option 5'),
          ],
        ),
        // DropdownButtonFormField(
        //   decoration: InputDecoration(
        //     enabled: false,
        //     label: Text('Label'),
        //     // alignLabelWithHint: true,
        //     fillColor: const Color.fromARGB(89, 255, 255, 255),
        //     filled: true,
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(10)

        //     ),
        //   ),
        //   dropdownColor: const Color.fromARGB(123, 81, 32, 32),
        //   items: [
        //     DropdownMenuItem(value: 'Item 1', child: Text('Item 1')),
        //     DropdownMenuItem(value: 'Item 2', child: Text('Item 2')),
        //     DropdownMenuItem(value: 'Item 3', child: Text('Item 3')),
        //     DropdownMenuItem(value: 'Item 4', child: Text('Item 4')),
        //     DropdownMenuItem(value: 'Item 5', child: Text('Item 5')),
        //   ],
        //   onChanged: (context){},
        // ),
      ),
    );
  }
}
