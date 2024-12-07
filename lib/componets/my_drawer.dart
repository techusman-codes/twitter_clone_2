/*  
Drawer 
this is a menu drawer which is usually access on the left side of the app bar

contains 5 meneu options

-Home
-profile
-Settings
-Logout

*/

import 'package:flutter/material.dart';
import 'package:twitter_clone/componets/my_drawer_tile.dart';
import 'package:twitter_clone/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Icon(
                  Icons.person,
                  size: 72,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Divider(
                // indent: 25,
                // endIndent: 25,
                color: Theme.of(context).colorScheme.secondary,
              ),
              const SizedBox(
                height: 10,
              ),
              // List tiles
              MyDrawerTile(
                title: "H O M E",
                icon: Icons.home,
                ontap: () {
                  //pop of the menu
                  Navigator.pop(context);
                },
              ),
              MyDrawerTile(
                title: "S E T T I N G S",
                icon: Icons.settings,
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsPage(),
                    ),
                  );
                },
              ),
            ],
            // List tiles
          ),
        ),
      ),
    );
  }
}
