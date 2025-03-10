import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class BottomAppBars extends StatelessWidget {
  const BottomAppBars({super.key});

  @override
  Widget build(BuildContext context) {
    int num = 0;
    return Scaffold(
      appBar: AppBar(title: const Text('BottomAppBar Demo')),
      body: ListView.builder(
        itemCount: 75,
        itemBuilder: (context, index) {
          num = index;
          num++;
          return Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('$num', style: TextStyle(fontSize: 20)),
              ),
            ],
          );
        },
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      // floatingActionButton: FloatingActionButton(
      //   isExtended: true,
      //   onPressed: (){},
      //   child: Icon(Icons.add),
      // ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.done),
              tooltip: 'Menu',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.edit),
              tooltip: 'Search',
              onPressed: () {},
            ),
            Expanded(child: Container()),
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add),backgroundColor: const Color.fromARGB(97, 146, 121, 121),),
          ],
        ),
      ),
    );
  }
}
