import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_list/widgets/grocery_list.dart';
// import 'package:shopping_list/widgets/new_item.dart';

void main() {
  runApp(
    ShoppingList(),
  );
}

class ShoppingList extends StatelessWidget {
  ShoppingList({super.key});

  final _router = GoRouter(
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => const GroceryList(),
        // routes: [
        //   GoRoute(
        //     name: 'addpage',
        //     path: 'addpage',
        //     builder: (context, state) => const NewItem(),
        //   ),
        // ]),
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Groceries',
      routerConfig: _router,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 147, 229, 250),
          brightness: Brightness.dark,
          surface: const Color.fromARGB(255, 42, 51, 59),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 50, 58, 60),
      ),
      // home: const GroceryList(),
    );
  }
}
