import 'package:flutter/material.dart';
import 'package:recipe_book/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Recipe Book',
      home: RecipeBook(),
    );
  }
}

class RecipeBook extends StatelessWidget {
  const RecipeBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
    child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Recipe Book',
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            )
          ]),
        ),
        body: TabBarView(children: [HomeScreen()]))
    );
  }
}
