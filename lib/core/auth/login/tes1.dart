import 'package:carkh_app/modules/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class test1 extends StatefulWidget {
  const test1({super.key});

  @override
  State<test1> createState() => _test1State();
}

class _test1State extends State<test1> {
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