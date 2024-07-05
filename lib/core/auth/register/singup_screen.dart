// import 'package:carkh_app/Form/FormLogin/Form_Login.dart';
// import 'package:carkh_app/Form/FormSingUp/SingUp_FullName.dart';
import 'package:carkh_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
    bool _obscureText = true;
    TextEditingController _fullname = TextEditingController();
    TextEditingController _email=TextEditingController();
    TextEditingController _password = TextEditingController();
    TextEditingController _confirmpassword=TextEditingController();
    String password = '123';
    String confirmpassword = '123';
    bool _passwordVisible = true; 
    bool _validate = true;
    void checkSingUp(){
       if(password==_password.text && confirmpassword == _confirmpassword.text){
            //Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (context) =>const SingUpFullName(),  ) );
        }
        else{
              _validate = false;
        }
    }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {
            //Navigator.of(context).pushReplacement(   MaterialPageRoute(builder: (context) =>const Formlogin(),   )  );
          },
        ),
      ),
      body: Wrap(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(             
                children: [
                  Container(
                    height: 120.0,
                    width: double.infinity,
                    child: Image.asset("images/Logo_CarKH.png",fit: BoxFit.cover,),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    height: 30.0,
                    width: double.infinity,
                    child: Text("Sing Up",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    ),
                   ),
                  ),  
                   const Text(
                      "Find your dream car!",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Container(                
                        decoration: BoxDecoration(
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
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person), 
                            hintText: 'Full name',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none, 
                            ),
                            contentPadding: EdgeInsets.all(15),     
                          ),
                        ),
                ),
                SizedBox(height: 5.0,),
                   Container(               
                        decoration: BoxDecoration(
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
                          controller: _email,                  
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email), 
                            hintText: 'Email', 
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.all(15),     
                          ),
                        ),
                ),
                SizedBox(height: 5.0,),                
                    Container(
                        decoration: BoxDecoration(
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
                          controller: _password,               
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock), 
                            hintText: 'Password', 
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              // borderSide: BorderSide(color:_validate? Colors.black: Colors.red , width: 2.0),
                              borderSide: _validate?BorderSide.none : BorderSide(color:_validate? Colors.black: Colors.red , width: 2.0) ,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
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
                SizedBox(height: 5.0,),
                    Container(
                 
                        decoration: BoxDecoration(
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
                          controller: _confirmpassword,                 
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'Input password again', // Optional label text
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                             
                              borderSide: _validate?BorderSide.none : BorderSide(color:_validate? Colors.black: Colors.red , width: 2.0) ,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
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
                Container(
                  child: Row(
                    children: [
                        Container(
                          child: _validate==true?Text(""):Text('Please Input Value',style: TextStyle(color: Colors.red,fontSize: 14,fontWeight: FontWeight.bold),),
                        )
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                    //Text('wrong'),
                   // _validate==true?Text(""):Text('Please Input Value',style: TextStyle(color: Colors.red),),
                    // loign b 
                    SizedBox(  height: 2.0, ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kButtonPrimaryColor,
                   borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      checkSingUp();
                    }
                    );              
                  },
                  child: Text('Sing Up',style: TextStyle(color: Colors.white),),
                  style: TextButton.styleFrom(   
                    //minimumSize: Size(325, 50),
                      // backgroundColor: Colors.red,
                      // padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                      textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
                  ),
                  
              ),
              SizedBox(height: 10,),
                    
                    Container(
                     
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), 
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Text("  Or  ",style: TextStyle(fontSize: 20),),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          )
                          
                        ],
                      ),
                    ),
                    // google login
                  SizedBox(height: 5),
              Container(
                  child: Center(
                    child: Material(             
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                          child: Container(
                            // width: 350,
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
                                  child:Text('Sign Up With Google',
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
                          // Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (context) =>const  SignUp(),  ) );
                        },
                      ),
                    ),      
                  ),
                ),
              //
               Container( 
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                        Text("Already have an account?", style: TextStyle(fontSize: 14,color: const Color.fromARGB(255, 98, 94, 94)),),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (context) =>const  SignUp(),  ) );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: kButtonPrimaryColor,fontWeight: FontWeight.bold,fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
