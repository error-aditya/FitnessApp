import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackbarExample extends StatefulWidget {
  const CustomSnackbarExample({super.key});

  @override
  State<CustomSnackbarExample> createState() => _CustomSnackbarExampleState();
}

class _CustomSnackbarExampleState extends State<CustomSnackbarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Snackbar Example'), centerTitle: true),
      floatingActionButton: InkWell(
        onTap: () {
          Get.snackbar(
            'Snackbar Example',
            '',
            backgroundColor: Colors.blue,
            snackPosition: SnackPosition.BOTTOM,
            isDismissible: false,
            duration: Duration(hours: 1),
            mainButton: TextButton(
              onPressed: () {
                Get.back();
              },
              child: SnackBarAction(
                label: 'Error',
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          width: 150,
          height: 50,
          child: Center(
            child: Text('Show Snackbar', style: TextStyle(color: Colors.black)),
          ),
        ),
      ),
    );
  }
}
