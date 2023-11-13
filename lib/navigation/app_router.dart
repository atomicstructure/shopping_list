// import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_list/widgets/new_item.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) {
        return const NewItem();
      },
    )
  ],
);
