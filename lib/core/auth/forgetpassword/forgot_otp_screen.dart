
import 'dart:math';
// import 'package:carkh_app/Form/FormSingUp/Form1_Singup.dart';
// import 'package:carkh_app/Form/FormSingUp/SingUp_P_E.dart';
// import 'package:carkh_app/Form/FormmFogotPasword/Forgot_P_E.dart';
// import 'package:carkh_app/Form/FormmFogotPasword/SetNew_Password.dart';
import 'package:carkh_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class VerifyEmail extends StatefulWidget {

  String GetData;// get email from 
   VerifyEmail({required this.GetData});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  String _generateOTP() {
    // Generate a random 5-digit OTP
    Random random = Random();
    int otp = random.nextInt(90000) + 10000;
    return otp.toString();
  }

  bool isvalidOTP =false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  TextEditingController _firstValue = TextEditingController();
  TextEditingController _secondValue = TextEditingController();
  TextEditingController _thirdValue = TextEditingController();
  TextEditingController _fourValue = TextEditingController();
  TextEditingController _fiveValue = TextEditingController();

  late FocusNode _firstFocusNode;
  late FocusNode _secondFocusNode;
  late FocusNode _thirdFocusNode;
  late FocusNode _fourthFocusNode;
  late FocusNode _fiveFocusNode;

  @override
  void initState() {
    super.initState();
    _firstFocusNode = FocusNode();
    _secondFocusNode = FocusNode();
    _thirdFocusNode = FocusNode();
    _fourthFocusNode = FocusNode();
    _fiveFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _firstFocusNode.dispose();
    _secondFocusNode.dispose();
    _thirdFocusNode.dispose();
    _fourthFocusNode.dispose();
    _fiveFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final String email = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {
            //Navigator.of(context).pushReplacement(   MaterialPageRoute(builder: (context) =>const ForgotPhoneEmail(),   )  );
          },
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // the start row
                  children: [
                    Container(
                      child:  Text(
                      "Check your Message",
                      style:  TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                       
                      ),
                    )),
                    Container(
                      //margin: EdgeInsets.only(left: 20,top: 5),
                      child: Row(
                        children: [
                          Text(
                            "We sent code to your message ",
                           style: TextStyle(
                              fontSize: 16,
                               color: Colors.grey
                            ),
                          ),
                          Text(
                            "${widget.GetData}",
                            style: TextStyle(
                              fontSize: 13, 
                              fontWeight: FontWeight.w200
                            ),  
                          )
                        ],
                      ),
                    ),
                    Container(
                      //margin: EdgeInsets.only(left: 20,top: 5),
                      child: Row(
                        children: [
                          Text(
                            "enter 5 degits code that mentioned in the message ",
                            style: TextStyle(
                              fontSize: 16,
                               color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                margin: EdgeInsets.only(left: 20, top: 5, right: 10),
              ),
              // textFieldBox
              Container(
                margin:
                EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 5),
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: SizedBox(
                          height: 56,
                          width: 56,
                          child: TextField(
                            controller: _firstValue,
                            focusNode: _firstFocusNode,
                            style: Theme.of(context).textTheme.headlineMedium,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(color: Colors.blue, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(color:isvalidOTP? Colors.red: Colors.grey , width: 2.0),
                              ),
                            ),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                _secondFocusNode.requestFocus();
                              } 
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: SizedBox(
                          height: 56,
                          width: 56,
                          child: TextField(
                            controller: _secondValue,
                            focusNode: _secondFocusNode,
                             style: Theme.of(context).textTheme.headlineMedium,
                             textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(color: Colors.blue, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(color:isvalidOTP? Colors.red: Colors.grey , width: 2.0),
                              ),
                            ),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                _thirdFocusNode.requestFocus();
                              }
                               else{
                                _firstFocusNode.requestFocus();
                              }
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: SizedBox(
                          height: 56,
                          width: 56,
                          child: TextField(
                            controller: _thirdValue,
                            focusNode: _thirdFocusNode,
                            style: Theme.of(context).textTheme.headlineMedium,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(color: Colors.blue, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(color:isvalidOTP? Colors.red: Colors.grey , width: 2.0),
                              ),
                            ),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                _fourthFocusNode.requestFocus();
                              }
                               else{
                                _secondFocusNode.requestFocus();
                              }
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: SizedBox(
                          height: 56,
                          width: 56,
                          child: TextField(
                            controller: _fourValue,
                            focusNode: _fourthFocusNode,
                            style: Theme.of(context).textTheme.headlineMedium,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(color: Colors.blue, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(color:isvalidOTP? Colors.red: Colors.grey , width: 2.0),
                              ),
                            ),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                _fiveFocusNode.requestFocus();
                              }
                               else{
                                _thirdFocusNode.requestFocus();
                              }
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: SizedBox(
                          height: 56,
                          width: 56,
                          child: TextField(
                            controller: _fiveValue,
                            focusNode: _fiveFocusNode,
                            
                            style: Theme.of(context).textTheme.headlineMedium,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(color: Colors.blue, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(color:isvalidOTP? Colors.red: Colors.grey , width: 2.0),
                              ),
                            ),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                _fiveFocusNode.requestFocus();
                              }
                              else{
                                _fourthFocusNode.requestFocus();
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin:EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isvalidOTP 
                      ? Icon(Icons.cancel , size: 18, color: const Color.fromARGB(255, 150, 10, 0),) // Show the clear icon if isvalidOTP is true
                      : SizedBox(), // Use SizedBox if you don't want to show any icon
                    Text(
                      isvalidOTP
                        ? "Wrong 5 digits Code, Please verify again." 
                        : "", // Show the error message if isvalidOTP is true
                      style: TextStyle(color:const Color.fromARGB(255, 150, 10, 0), ),
                    ),
                  ],
                ),
                
              ),
              //btnVerify
              Container(
                margin:EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: kButtonPrimaryColor,
                ),
                child: SizedBox(
                  width: double.infinity, // Specify the width of the Container
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      //get data from controllor (the controller get data from input TextField)
                      String firstValue = _firstValue.text;
                      String secondValue = _secondValue.text;
                      String thirdValue = _thirdValue.text;
                      String fourValue = _fourValue.text;
                      String fiveValue = _fiveValue.text;

                      final opt = _firstValue.text+_secondValue.text+_thirdValue.text+_fourValue.text+_fiveValue.text;
                      if(opt=="12345"){
                        setState(() {
                          isvalidOTP = false;
                        });
                        //Navigator.of(context).pushReplacement(MaterialPageRoute(builder:  (context) => const ResetPassword()));
                      }
                      else{
                        setState(() {
                          isvalidOTP = true;
                        });
                      }
                      // Show snackbar with the retrieved data
                      print("Verify by : ${firstValue}${secondValue}${thirdValue}${fourValue}${fiveValue}");
                    },
                    child: Text(
                      'Verify Code',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              //resendemail
              Container(
                margin:
                EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Haven't got the email yet?",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        // Add your onPressed logic here
                        print("Login button pressed");
                      },
                      child: Text(
                        "Resend code",
                        style: TextStyle(
                            color: kButtonPrimaryColor, // Change the color to your desired link color
                            decoration:
                                TextDecoration.underline, // Underline the text
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

