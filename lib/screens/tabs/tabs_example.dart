import 'package:flutter/material.dart';

class TabsExample extends StatelessWidget {
  const TabsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(child: Row(children: [Icon(Icons.favorite), SizedBox(width: 15,), Text('data')])),
              Tab(child: Row(children: [Icon(Icons.favorite), SizedBox(width: 15,),Text('Icon')])),
              Tab(child: Row(children: [Icon(Icons.favorite), SizedBox(width: 15,),Text('Tab')])),
            ],
          ),
        ),
      ),
    );
  }
}
