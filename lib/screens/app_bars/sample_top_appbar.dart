import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class AppBars extends StatelessWidget {
  const AppBars({super.key});

  // 1) Default AppBar
  // Widget build(BuildContext context) {
  //   int num = 0;
  //   return Scaffold(
  //     appBar: AppBar(
  //       elevation: 0,
  //       forceMaterialTransparency: true,
  //       primary: true,
  //       title: const Text('Default AppBar'),
  //       clipBehavior: Clip.none,
  //       leading: Icon(Icons.menu),
  //       actions: [Icon(LucideIcons.heart),SizedBox(width: 5),Icon(LucideIcons.heart)],
  //     ),
  //     body: ListView.builder(
  //       itemCount: 75,
  //       itemBuilder: (context, index) {
  //         num = index;
  //         num++;
  //         return Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
            // children: [
            //   Padding(
            //     padding: const EdgeInsets.only(left: 10),
            //     child: Text('$num', style: TextStyle(fontSize: 20)),
            //   ),
            // ],
  //         );
  //       },
  //     ),
  //   );
  // }

  // 2) pinned AppBar
  // @override
  // Widget build(BuildContext context) {
  //   int num = 0;
  //   return Scaffold(
  //     appBar: AppBar(
  //       primary: true,
  //       title: const Text('Pinned AppBar Example'),
  //       leading: Icon(Icons.menu),
  //       actions: [Icon(LucideIcons.heart),SizedBox(width: 5),Icon(LucideIcons.heart)],
  //     ),
  //     body: ListView.builder(
  //       itemCount: 75,
  //       itemBuilder: (context, index) {
  //         num = index;
  //         num++;
  //         return Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
            // children: [
            //   Padding(
            //     padding: const EdgeInsets.only(left: 10),
            //     child: Text('$num', style: TextStyle(fontSize: 20)),
            //   ),
            // ],
  //         );
  //       },
  //     ),
  //   );
  // }

  // 3) Enter Always AppBar
  // @override
  // Widget build(BuildContext context) {
  //   int num = 0;
  //   return Scaffold(
  //     body: CustomScrollView(
  //       slivers: [
  //         SliverAppBar(
  //           leading: Icon(Icons.menu),
  //           title: const Text('Collapsed AppBar'),
  //           expandedHeight: 20,
  //           floating: true,
  //           actions: [
  //             Icon(LucideIcons.heart),
  //             SizedBox(width: 5),
  //           ],
  //         ),
  //         SliverList.builder(
  //           itemCount: 75,
  //           itemBuilder: (context, index) {
  //             num = index;
  //             num++;
  //             return Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Padding(
  //                   padding: const EdgeInsets.only(left: 10),
  //                   child: Text('$num', style: TextStyle(fontSize: 20)),
  //                 ),
  //               ],
  //             );
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // 4) Center AppBar
  @override
  Widget build(BuildContext context) {
    int num = 0;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        primary: true,
        centerTitle: true,
        title: const Text('Center Title AppBar'),
        clipBehavior: Clip.none,
        leading: Icon(Icons.menu),
        actions: [SizedBox(width: 5),Icon(LucideIcons.heart)],
      ),
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
    );
  }

  // 5) Exit Until Collapsed AppBar
  
}
