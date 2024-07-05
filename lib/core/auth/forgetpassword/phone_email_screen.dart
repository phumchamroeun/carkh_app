// import 'package:carkh_app/Form/FormLogin/Form_Login.dart';
// import 'package:carkh_app/Form/FormmFogotPasword/Forgot_OTP.dart';
import 'package:carkh_app/constants/colors.dart';
import 'package:flutter/material.dart';

class ForgotPhoneEmail extends StatefulWidget {
  const ForgotPhoneEmail({super.key});

  @override
  State<ForgotPhoneEmail> createState() => _ForgotPhoneEmailState();
}

class _ForgotPhoneEmailState extends State<ForgotPhoneEmail> {

  TextEditingController _controller = TextEditingController();
  bool _isNumber = false;
  bool checkText= false;  

@override
void initState() {
  super.initState();
  _controller.addListener(_checkInputType);
}

void _checkInputType() {
  setState(() {
    // Check if the entered value is a number
    _isNumber = isNumeric(_controller.text);
  });
}

bool isNumeric(String value) {
  // Check if the value can be parsed as a number
  return double.tryParse(value) != null;
}

  @override
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
      body: Container(
        //margin: EdgeInsets.only(left: 20, right: 20),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Text(
                "Forgot password",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Text(
                "Please enter your Email/Phone Number.",
                  style: TextStyle(
                    fontSize: 15,
                     color: const Color.fromARGB(255, 129, 121, 121),
                  ),
              ),
              Text(
                  "EX: 01234567 / phumchamroeun@gmail.com",
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 129, 121, 121),
                  ),
                ),
              SizedBox(height: 25,),
              Text(
                "Email/Phone Number",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Form(
                 child: Column(
                 children: [
                   Container(
                     child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          prefixIcon: _isNumber ? Icon(Icons.phone) : Icon(Icons.message),
                          hintText: "Email / Phone Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13.0),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(196, 194, 194, 1),
                            ),
                          ),
                          //contentPadding: EdgeInsets.all(15),
                        ),
                      ),
                   ),
                 ],
                             ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
               height: checkText? 30: 0,
                child: Row(
                  children: [
                    checkText ? Icon(Icons.cancel, color: Colors.red, size: 15) : SizedBox(),
                    Text(" This Phone Number has been used!", style: TextStyle(color: Colors.red,fontSize: 14,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
          
              // Container(
              //   margin: EdgeInsets.only(top: 10),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(15),
              //     color: Color.fromARGB(255, 150, 10, 0),
              //   ),
              //   child: SizedBox(
              //     width: double.infinity, 
              //     height: 60,
              //     child: TextButton(
                    
              //       onPressed: () {
              //         String doubleCheck =_controller.text;
              //         if(doubleCheck=="01234567" || doubleCheck=="phumchamroeun@gmail.com"){
              //           setState(() {
              //             checkText=false;
              //             Navigator.of(context).pushReplacement(   MaterialPageRoute(builder: (context) =>VerifyEmail(GetData: _controller.text),)  );
              //           });
              //         }
              //         else{
              //           setState(() {
              //             checkText=true;
                         
              //           });
              //         }
              //       },
              //       child: Text(
              //         'Next',
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 22,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

               Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kButtonPrimaryColor,
                    //  gradient: LinearGradient(
                    //     // begin: Alignment.topCenter,
                    //     // end: Alignment.bottomCenter,
                    //     colors: [
                    //     Color.fromRGBO(225, 34, 38, 1),
                    //     Color.fromRGBO(225, 34, 38, 1),
                    //      ],
                    //  ),
                     borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                       String doubleCheck =_controller.text;
                      if(doubleCheck=="01234567" || doubleCheck=="phumchamroeun@gmail.com"){
                        setState(() {
                          checkText=false;
                          //Navigator.of(context).pushReplacement(   MaterialPageRoute(builder: (context) =>VerifyEmail(GetData: _controller.text),)  );
                        });
                      }
                      else{
                        setState(() {
                          checkText=true;
                        });
                      }  
                    },
                    child: Text('Next',style: TextStyle(color: Colors.white),),
                    style: TextButton.styleFrom(
                        textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                    ),  
                ),
            ],
          ),
        ),
      )
    );
  }
}