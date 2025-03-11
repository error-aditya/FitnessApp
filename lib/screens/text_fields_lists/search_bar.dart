import 'package:flutter/material.dart';

class SearchBarExample extends StatelessWidget {
  const SearchBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: SearchBar(
            hintText: 'Hinted search text',
            leading: Icon(Icons.search),
            trailing: [Icon(Icons.more_vert_rounded)],
          ),
        ),
        body: Column()
      ),
    );
  }
}
