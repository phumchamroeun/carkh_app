// import 'package:carkh_app/Form/FormLogin/Form_Login.dart';
// import 'package:carkh_app/Form/FormSingUp/SingUp_FullName.dart';

// import 'package:carkh_app/Form/FormmFogotPasword/Forgot_OTP.dart';
import 'package:carkh_app/constants/colors.dart';
import 'package:flutter/material.dart';

class SingupPhoneEmail extends StatefulWidget {
  const SingupPhoneEmail({super.key});

  @override
  State<SingupPhoneEmail> createState() => _SingupPhoneEmailState();
}

class _SingupPhoneEmailState extends State<SingupPhoneEmail> {

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
            //Navigator.of(context).pushReplacement(   MaterialPageRoute(builder: (context) =>const SingUpFullName(),   )  );
          },
        ),
      ),
      body: Center( 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Text(
                "SingUp",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Text(
                "Please enter your Email/Phone Number.",
                  style: TextStyle(
                    fontSize: 14,
                     color: const Color.fromARGB(255, 129, 121, 121),
                  ),
              ),
              Text(
                  "EX: 01234567 / chamroeun@gmail.com",
                  style: TextStyle(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 129, 121, 121),
                  ),
                ),
              SizedBox(height: 25,),
              Text(
                "Email/Phone Number",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
              TextField(
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
                  focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide(
                               color:Colors.black,
                               width: 3, 
                            ),
                            ),     
                ),
              ),
              SizedBox(height: 5,),
              SizedBox(
                height: checkText? 30: 0,
                child: Row(
                  children: [
                    checkText ? Icon(Icons.cancel, color: kErrormessage, size: 17) : SizedBox(),
                    Text(" This Phone Number has been used, Please try again!", style: TextStyle(color: kErrormessage,fontSize: 13),),
                  ],
                ),
              ),
            SizedBox(  height: 15.0, ),
            Container(
               width: double.infinity,
              decoration: BoxDecoration(
                color: kButtonPrimaryColor,
                //  gradient: LinearGradient(
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
                      if(doubleCheck=="01234567" || doubleCheck=="chamroeun@gmail.com"){
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