
// import 'package:carkh_app/Form/FormSingUp/Form1_Singup.dart';
// import 'package:carkh_app/Form/FormSingUp/SingUp_P_E.dart';
import 'package:flutter/material.dart';

class SingUpFullName extends StatefulWidget {
  const SingUpFullName({super.key});

  @override
  State<SingUpFullName> createState() => _SingUpFullNameState();
}

class _SingUpFullNameState extends State<SingUpFullName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: BackButton(
         
          onPressed: () {
             //Navigator.of(context).pushReplacement(   MaterialPageRoute(builder: (context) =>const SignUp(),   )  );
          },
        ),
       ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 0.0),
              height: 30.0,
              width: double.infinity,
              child: Text(
                "Sing Up",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 0.0),
              height: 30.0,
              width: double.infinity,
              child: Text(
                "Please enter your Full name. Ex:Chanrattan ",
                style: TextStyle(
                  fontSize: 15,
                   color: const Color.fromARGB(255, 129, 121, 121),
                ),
              ),
            ),
            SizedBox(height: 25.0,),
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 0.0),
              height: 30.0,
              width: double.infinity,
              child: Text(
                "Full Name",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // const Text('Full Name', style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
            Form(
              //key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.0,
                    ),
                    Container(
                     margin: EdgeInsets.symmetric(horizontal: 8),
                     child:  TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(13.0),
                           borderSide: BorderSide(
                           color:Colors.black,
                           width: 3, 
                        ),
                        ),
                      prefixIcon: Icon(Icons.person), 
                     hintText: 'Full name', 
                      //labelText: 'Funll name ', 
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13.0),
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(15),
                    ),
                  ),
                    ),
              SizedBox(height: 25.0),
              Container(
             decoration: BoxDecoration(
               gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                  Color.fromRGBO(225, 34, 38, 1),
                  Color.fromRGBO(225, 34, 38, 1),
                   ],
               ),
               borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {               
                //Navigator.of(context).pushReplacement(   MaterialPageRoute(builder: (context) =>const SingupPhoneEmail(),   )  );
              },
              child: Text('Next',style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(
                minimumSize: Size(340, 50),
                  // backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
                 ), 
              ),
                ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}