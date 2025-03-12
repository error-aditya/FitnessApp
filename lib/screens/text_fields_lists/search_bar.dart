import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class SearchBarExample extends StatelessWidget {
  const SearchBarExample({super.key});

  printt() {
    for (int num = 1; num <= 100; num++) {
      Text('Text $num');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: SearchBar(
            elevation: null,
            onTap: () {
              showSearch(context: context, delegate: SearchScreen());
              // Get.bottomSheet(BottomDrop());
            },
            hintText: 'Hinted search text',
            leading: Icon(Icons.search),
            trailing: [Icon(Icons.more_vert_rounded)],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (int num = 1; num <= 100; num++)
                SingleChildScrollView(
                  child: Text('Text $num', style: TextStyle(fontSize: 15)),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchScreen extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        // close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Implement the results widget here
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(Icons.star),
            title: Text('Suggestion 0'),
            subtitle: Text('Additional info'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(Icons.star),
            title: Text('Suggestion 1'),
            subtitle: Text('Additional info'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(Icons.star),
            title: Text('Suggestion 2'),
            subtitle: Text('Additional info'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(Icons.star),
            title: Text('Suggestion30'),
            subtitle: Text('Additional info'),
          ),
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Implement the suggestions widget here
    return buildResults(context);
  }
}
