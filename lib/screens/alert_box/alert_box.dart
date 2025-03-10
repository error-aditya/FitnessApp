import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert Box Sample'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: const StadiumBorder(),
                side: const BorderSide(
                  color: Colors.black,
                  width: BorderSide.strokeAlignCenter,
                ),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Alert Box'),
                      content: Text('Simple Alert Box'),
                      actions: [
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 100),
                                TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text('Dismiss'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text('Confirm'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text(
                'Simple Alert Box',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        icon: Icon(Icons.heart_broken_rounded),
                        title: Text('Title'),
                        content: Text(
                          "This area typically contains the supportive text which presents the details regarding the dialog's purpose.",
                        ),
                        actions: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 110),
                                  TextButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text('Dismiss'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text('Confirm'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Center(
                  child: Text(
                    'Alert Icon Box',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
