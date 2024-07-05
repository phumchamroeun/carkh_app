import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 100,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Expanded(
            child: Row(
              children: [
                Icon(Icons.person),
                Text(
                  "Login\singup",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment,
              children: [Icon(Icons.notifications)],
            ),
          )
        ]),
      ),
    );
  }
}
