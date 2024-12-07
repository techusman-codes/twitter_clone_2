import 'package:flutter/material.dart';
import 'package:twitter_clone/componets/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Center(child: const Text("H O M E")),
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
