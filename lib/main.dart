import 'package:flutter/material.dart';
import 'package:widget_ellipsis/app_scaffold_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textEditingController = TextEditingController();
  var text = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Тест Flutter'),
        ),
        body: Center(
          child: AppScaffoldComponent(
            // text: text,
            text: 'Какой-то текст',
            // text: 'Какой-то текст Какой-то текстКакой-то текстКакой-то текст',
            isSelected: true,
          ),
        ),
      ),
    );
  }
}
