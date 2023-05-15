import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Text('Categories'),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('bACK'),
        ),
      ]),
    );
  }
}
