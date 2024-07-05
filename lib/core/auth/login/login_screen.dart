import 'package:carkh_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';



// import 'package:carkh_app/Form/FormSingUp/Form1_Singup.dart';
// import 'package:carkh_app/Form/FormSingUp/SingUp_E_P.dart';
// import 'package:carkh_app/Form/FormSingUp/SingUp_E_P2.dart';
// import 'package:carkh_app/Form/FormSingUp/SingUp_FullName.dart';
// import 'package:carkh_app/Form/FormmFogotPasword/Forgot_P_E.dart';
// import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class  Formlogin extends StatefulWidget {
  const Formlogin({super.key});

  @override
  State<Formlogin> createState() => _State();
}
final _formKey = GlobalKey<FormState>();
class _State extends State<Formlogin> {
   bool _obscureText = true;
   var txt1 = TextEditingController();
   var txt2 = TextEditingController();
   bool _validate = true;
   bool _validatenull = false;

    void checkLogin(){
    if (txt1.text=="cham"&&txt2.text=="123") {
        //Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (context) =>const SignUp(),  ) );
    }else{
      _validate = false;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body:Wrap(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
              children:[
                //container for slid image car in home_page
                Container(
                  height: 160.0,
                  width: double.infinity,
                  child: Image.asset("images/Logo_CarKH.png",fit: BoxFit.cover,),
                ),
                 SizedBox(
                  height: 10.0,
                ),
                //Container text login 
                Container(
                   alignment: Alignment.center,
                   height: 30.0,
                   width: double.infinity,
                   child: Text("Login",style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //Container text wellcom to carKH
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: double.infinity,
                  child: Text("Wellcome to CarKH",style: TextStyle(
                    fontSize: 14,     
                  ),
                  ),
                ),
                //Form 
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Form(
                    key: _formKey,
                    child: Column(              
                      children: [                 
                        Container(       
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: TextField(      
                                controller: txt1,             
                                decoration: InputDecoration( 
                                  focusedBorder: OutlineInputBorder(                         
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                  color:Colors.black,
                                  width: 2,                           
                                  ),
                                ), 
                                enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                // borderSide: BorderSide(color:_validate? Colors.black: Colors.red , width: 2.0),
                                borderSide: _validate?BorderSide.none : BorderSide(color:_validate? Colors.black: Colors.red , width: 2.0) ,
                              ),
                                  prefixIcon: Icon(Icons.person), // Icon for the text field
                                  hintText: 'Uername/Phone Number', // Optional label text
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(13.0),
                                    borderSide: BorderSide.none, // No border side
                                  ),
                                  contentPadding: EdgeInsets.all(15),     
                                ),
                                onChanged: (value) {
                                  if (value == null || value.isEmpty) {
                                   _validate= true;
                                  }
                                  return null;
                                },
                              ),
                              ),
                              SizedBox(height: 20.0,),
                                    Container(
                                      decoration: BoxDecoration(
                                        // Use BoxStyle properties here
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                        ],
                                      ),
                                      child: TextField(
                                        controller: txt2,
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: _validate?BorderSide.none : BorderSide(color:_validate? Colors.black: Colors.red , width: 2.0),
                                        ),
                                      prefixIcon: Icon(Icons.lock), // Icon for the text field
                                      hintText: 'Password', // Optional label text
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none, // No border side
                                      ),
                                      contentPadding: EdgeInsets.all(15),
                                      suffixIcon: GestureDetector(onTap: () {
                                    setState(() {
                                      _obscureText=!_obscureText;
                                    });
                                  },
                                  child: Icon(_obscureText
                                  ? Icons.visibility
                                  :Icons.visibility_off),
                                  ),
                                        ),
                                         obscureText: _obscureText,    
                              ),
                           ),                       
                      ]
                      ),
                  ),
                ),            
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: _validate==true?Text(""):Text('Unvalid Username or Password Try Again!',style: TextStyle(color: kErrormessage,fontSize: 13,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),        
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: (){
                        //Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (context) =>const  ForgotPhoneEmail(),  ) );
                      }, child: Text("Forgot password?",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),)
                    ],
                  ),
                ),               
                //Text(("Wrong")),
                 SizedBox(  height: 10.0, ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kButtonPrimaryColor,
                    //  gradient: LinearGradient(
                    //     // begin: Alignment.topCenter,
                    //     // end: Alignment.bottomCenter,
                    //     colors: [
                    //     Color.fromRGBO(230, 183, 54, 1),
                    //     Color.fromRGBO(212, 158, 12, 1),
                    //      ],
                    //  ),
                     borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        checkLogin();
                        //  if (_formKey.currentState!.validate()) {                        
                        //      print("please Input your username and password");                    
                        //   } 
                      });
                       
                    },
                    child: Text('Login',style: TextStyle(color: Colors.white),),
                    style: TextButton.styleFrom(
                        //minimumSize: Size(335, 50),
                        // backgroundColor: Colors.red,
                        //padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                        textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                    ),
                    
                ),
                SizedBox(height: 20),
                Container(
                  child: Center(
                    child: Material(             
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(12.0),
                      child: InkWell(
                          child: Container(
                            //  width: 350,
                             height: 50,
                            child: Row(
                              children: [
                                 Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                  child: Image.asset("images/Google_CarKH.jpg",fit: BoxFit.cover,),
                                ),
                                Expanded(
                                  child:Text('Login With Google',
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      
                                     ),
                                  )
                                  )
                              ],
                              ),
                          ),
                          onTap:() {
                            
                          //Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (context) =>const  SignUp(),  ) );
                        },
                      ),
                    ),
                      
                  ),
                ),
              
                //
                 Container(
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Do you have an account?",
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 137, 134, 134),
                        ),
                      ),
                      TextButton(onPressed: (){
                        //Navigator.of(context).pushReplacement(   MaterialPageRoute(builder: (context) =>const SignUp(),   )  );
                      },  
                      child: Text("Sign Up",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: kButtonPrimaryColor),))
                    ],
                   ),
                 )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


