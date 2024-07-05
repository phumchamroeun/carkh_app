import 'package:carkh_app/constants/colors.dart';
import 'package:flutter/material.dart';
class ProfileUser extends StatefulWidget {
  const ProfileUser({super.key});

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("My Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
       ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
          //block iamge
          //
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Image.asset("images/Logo_CarKH.png",fit: BoxFit.cover,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Phum Chamroeun",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("Costomer"),
                        ElevatedButton(
                          onPressed:(){}, 
                          child: Text("Edite Profile",style: TextStyle(color: kButtonPrimaryColor),)),
                      ],
                     ),
                   )
                ],
              ),
            )
          ],
         ),
       ),
    );
  }
}