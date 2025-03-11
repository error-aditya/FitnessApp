import 'package:flutter/material.dart';

class NormalNavigationDrawer extends StatefulWidget {
  const NormalNavigationDrawer({super.key});

  @override
  State<NormalNavigationDrawer> createState() => _NormalNavigationDrawerState();
}

class _NormalNavigationDrawerState extends State<NormalNavigationDrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey, // Assign a global key to control the drawer
        // appBar: AppBar(
        //   title: Text('Normal Navigationn Drawer'),
        //   leading: Container(), // Hide the drawer icon
        // ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favorite'),
                onTap: () => Navigator.of(context).pop(),
              ),
              ListTile(
                leading: Icon(Icons.face),
                title: Text('Face'),
                onTap: () => Navigator.of(context).pop(),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('>>> Swipe <<<',style: TextStyle(fontSize: 20),),
              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer(); // Opens the drawer manually
                },
                child: Text('Click to Open',style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
