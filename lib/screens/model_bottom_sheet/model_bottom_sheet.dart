import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ModelBottomSheetExample extends StatefulWidget {
  const ModelBottomSheetExample({super.key});

  @override
  State<ModelBottomSheetExample> createState() =>
      _ModelBottomSheetExampleState();
}

class _ModelBottomSheetExampleState extends State<ModelBottomSheetExample> {
  bool? select = false;
  void modelbsheet() {
    showModalBottomSheet(
      isDismissible: false,
      enableDrag: true,
      context: context,
      isScrollControlled: select! ? true : false,
      useSafeArea: true,
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 221, 177, 47),
                ),
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  'Hide Bottom Sheet',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 50,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                addRepaintBoundaries: true,
                itemBuilder: (context, modelbs) {
                  return ListTile(
                    leading: Icon(LucideIcons.heart),
                    title: Text('item'),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Model BottomSheet Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CheckboxListTile(
              activeColor: Colors.black,
              checkColor: Colors.white,
              value: select,
              title: Text(
                'Skip partically expanded State',
                style: TextStyle(color: Colors.black),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (Value) {
                setState(() {
                  select = Value!;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                modelbsheet();
              },
              child: Text('Show Bottom Sheet',style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
