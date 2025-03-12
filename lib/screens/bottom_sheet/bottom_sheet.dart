import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetExample extends StatefulWidget {
  @override
  _BottomSheetExampleState createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample>
    with TickerProviderStateMixin {
  // const BottomSheetExample({super.key});

  void sheet() {
    Get.bottomSheet(
      DraggableScrollableSheet(
        builder: (context, scrollController) {
          return Container(
            height: 400,
            width: Get.width,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'sheet content',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    'Click to collapse sheet',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      enableDrag: true,
      backgroundColor: const Color.fromARGB(149, 93, 93, 101),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('BottomSheet'), centerTitle: true),
      body: Card(
        child: ListTile(
          title: Text('Bottom Sheet'),
          subtitle: Text('Click here to show the sheet!'),
          onTap: () {
            sheet();
          },
        ),
      ),
    );
  }
}
