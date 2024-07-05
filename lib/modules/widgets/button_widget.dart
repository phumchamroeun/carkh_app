import 'package:flutter/material.dart';


class DynamicButton extends StatefulWidget {
  final String initialText;
  final Color initialColor;
  final VoidCallback onPressed;

  DynamicButton({
    required this.initialText,
    required this.initialColor,
    required this.onPressed,
  });

  @override
  _DynamicButtonState createState() => _DynamicButtonState();
}

class _DynamicButtonState extends State<DynamicButton> {
  late String buttonText;
  late Color buttonColor;

  @override
  void initState() {
    super.initState();
    buttonText = widget.initialText;
    buttonColor = widget.initialColor;
  }

  void _changeButtonProperties() {
    setState(() {
      buttonText = buttonText == 'Click Me' ? 'Clicked!' : 'Click Me';
      buttonColor = buttonColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.onPressed();
        _changeButtonProperties();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
      ),
      child: Text(buttonText),
    );
  }
}
