import 'package:carkh_app/modules/page/bottom_navigation_widgets.dart';
import 'package:carkh_app/modules/page/manew.dart';
import 'package:flutter/material.dart';
 class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //menew
              MainContainer() ,
            //Searcg
            Container(
              height: 100,
              width: 100,
              color:Colors.red,
            )
            //Slider
        
            //More feature
        
            //Car for sell
        
            //Navigation
            
          ],
        ),
      ),
    );
  }
}