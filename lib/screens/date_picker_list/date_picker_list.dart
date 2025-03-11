import 'package:flutter/material.dart';

class DatePickerExample extends StatelessWidget {
  const DatePickerExample({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('DatePicker Example'),
  //       centerTitle: true,
  //     ),
  //     body: Center(
  //       child: ElevatedButton(
  //         style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
  //         onPressed: () {
  //           showDatePicker(
  //             context: context,
  //             firstDate: DateTime(2000),
  //             lastDate: DateTime(2100),
  //             barrierLabel: 'Select Datedddd',
  //             fieldHintText: "Select The Date",
  //             // barrierDismissible: false,
  //             confirmText: 'Select',
  //             fieldLabelText: "Select the date",
  //             helpText: 'Select The Date',
  //             keyboardType: TextInputType.datetime,
  //             locale: Locale.fromSubtags(
  //               languageCode: 'en',
  //               scriptCode: 'Hans',
  //             ),
  //           );
  //         },
  //         child: Text(
  //           'Select Date',
  //           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date RangePicker Example'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          onPressed: () {
            showDateRangePicker(
              context: context,
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
              confirmText: "You have seelected the date.",
              barrierDismissible: false,
            );
          },
          child: Text(
            'Date Range Picker',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
