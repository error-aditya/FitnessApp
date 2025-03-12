import 'dart:ffi';

import 'package:flutter/material.dart';

class DockedSearchBar extends StatefulWidget {
  const DockedSearchBar({super.key});

  @override
  State<DockedSearchBar> createState() => _DockedSearchBarState();
}

class _DockedSearchBarState extends State<DockedSearchBar> {
  late SearchController _searchController; // define it here
  countt() {
    return List<ListTile>.generate(5, (int index) {
      final String item = 'Suggestion $index';
      return ListTile(
        leading: Icon(Icons.star),
        title: Text('Suggestion $index'),
        subtitle: Text('Additional info'),
        onTap: () {
          setState(() {
            _searchController.closeView(item);
          });
        },
      );
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _searchController = SearchController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: SearchAnchor(
            shrinkWrap: true,
            searchController: _searchController,
            isFullScreen: false,
            viewLeading: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(Icons.search),
            ),
            viewHintText: 'Hinted search text',
            viewTrailing: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Icon(Icons.more_vert),
              ),
            ],
            builder: (context, __) {
              return SearchBar(
                elevation: null,
                
                onTap: () {
                  _searchController.openView();
                },
                onChanged: (_) {
                  _searchController.openView();
                },
                controller: _searchController,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.search),
                ),
                trailing: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(Icons.more_vert),
                  ),
                ],
                hintText: 'Hinted search text',
              );
            },
            suggestionsBuilder: (context, _searchController) {
              return countt();
            },
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
