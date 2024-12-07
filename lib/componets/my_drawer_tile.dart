// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

/*
Drawer tile

This is a simple tile for each item in the menu drawer

to use this widget we need
-title (e.g home)
-icon (e.g Icons.home)
-functions (e.g goToHomePage())
*/

class MyDrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? ontap;
  MyDrawerTile({
    Key? key,
    required this.title,
    required this.icon,
    this.ontap,
  }) : super(key: key);
  //  Build UI
  @override
  Widget build(BuildContext context) {
    // List tile
    return ListTile(
        title: Text(
          title,
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
        leading: Icon(
          icon,
          color: Theme.of(context).colorScheme.primary,
        ),
        onTap: ontap);
  }
}
