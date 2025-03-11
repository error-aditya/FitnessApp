import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ListItemsExample extends StatelessWidget {
  const ListItemsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Items Example'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            leading: Icon(LucideIcons.heart),
            title: Text('This is first list item', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Divider(),
          ListTile(
            leading: Icon(LucideIcons.heart),
            title: Text('Two line list item with trailing', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Secondary text', style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: Text('meta'),
          ),
          Divider(),
          ListTile(
            leading: Icon(LucideIcons.heart),
            title: Column(
              children: [
                Row(
                  children: [
                    Text('Overline', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  children: [
                    Text('Three line list item', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            subtitle: Text('Secondary text', style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: Text('meta'),
          ),
          Divider(),
        ],
      ),
    );
  }
}
