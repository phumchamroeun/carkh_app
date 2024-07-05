import 'package:flutter/material.dart';

import '../../../modules/widgets/button_widget.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("oop")),
      body: Center(
        child: DynamicButton(
            initialText: 'Click Me',
            initialColor: Colors.blue,
            onPressed: () {
              print('Button Pressed!');
            },
          ),
      ),
    );
  }
}