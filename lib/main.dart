import 'package:flutter/material.dart';
import 'package:widget_ellipsis/app_scaffold_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Тест Flutter'),
        ),
        body: const Center(
          child: AppScaffoldComponent(
            // text: 'Какой-то текст',
            text: 'Какой-то текст Какой-то текстКакой-то текстКакой-то текст',
            isSelected: false,
          ),
        ),
      ),
    );
  }
}