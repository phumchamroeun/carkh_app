//import 'package:carkh_app/Form/FormSingUp/SingUp_E_P2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {

  TextEditingController _inputPassword = TextEditingController();
  TextEditingController _reEnter=TextEditingController();
  bool setPassword = true;
  bool _setPassword=true;
  bool setConform = false;
  
  bool showBow= false;
    
  bool _password = true;
  bool _passwords = true;

  String userpassword = '12345678';
  String confirmpassword= '12345678';
  @override
  Widget build(BuildContext context) {

  String newPassword = _inputPassword.text;
    if (newPassword.isEmpty) {
      _setPassword = true;
    } else {
      if (newPassword.length < 8) {
        _setPassword = true;
      } else {
        _setPassword = false;
      }
    }
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_sharp),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // the start row
                children: [
                  Container(
                      //margin: EdgeInsets.only(top: 10),
                      child: Text(
                    "Set a new password",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    //margin: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Create a password Ensure defferencts from ",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    child: Row(
                      children: [
                        Text(
                          "previous ones for",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start, // the start row
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: TextField(
                            controller: _inputPassword,
                            obscureText: _passwords,
                            decoration: InputDecoration(
                              prefixIcon:Icon(Icons.lock), // Icon for the text field
                              //labelText: 'Password ', // Optional label text
                              hintText: 'enter password', // Placeholder text
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13.0)
                              ),
                              contentPadding: EdgeInsets.all(15),
                              suffixIcon: IconButton(
                                icon: Icon(_passwords? Icons.visibility : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _passwords = !_passwords; // Toggle password visibility
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        if(showBow)
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              
                              Icon(  
                                newPassword.isEmpty ? 
                                Icons.error_outline_outlined: (_setPassword? Icons.cancel:Icons.check),
                                color: newPassword.isEmpty ? Colors.blue : (_setPassword ? Colors.red : Colors.green),),
                              Text(
                                " Must be at least 8 charators",
                                style: TextStyle(color: newPassword.isEmpty ? Colors.blue : (_setPassword ? Colors.red : Colors.green), fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Conform Password",
                            style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: TextField(
                            obscureText: _password,
                            controller: _reEnter,
                            decoration: InputDecoration(
                              prefixIcon:
                                Icon(Icons.lock), 
                              
                              hintText: 're-enter password', 
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13.0)
                              ),
                              contentPadding: EdgeInsets.all(15),
                              suffixIcon: IconButton(
                                icon: Icon(_password ? Icons.visibility : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _password =!_password; // Toggle password visibility
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: setConform? 30: 0,
                          child: Row(
                            children: [
                              setConform 
                                ? Icon(Icons.cancel , color: const Color.fromARGB(255, 150, 10, 0),) // Show the clear icon if isvalidOTP is true
                                : SizedBox(),
                              Text(
                                setConform?
                                " Conform password does not match": "",
                                style: TextStyle( color: const Color.fromARGB(255, 150, 10, 0), fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        // loign b
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 150, 10, 0),
                          ),
                          child: SizedBox(
                            width: double.infinity, // Specify the width of the Container
                            height: 60,
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  showBow=true;
                                });
                                
                                String conForm =_reEnter.text;
                                if(conForm != newPassword){
                                  setState(() {
                                    setConform=true;
                                  });
                                  
                                }else if(userpassword == _inputPassword.text && confirmpassword==_reEnter.text){
                                    //Navigator.of(context).pushReplacement(   MaterialPageRoute(builder: (context) =>const SingUpEmailPhone2(),   )  );
                                }
                                else{
                                   setState(() {
                                    setConform=false;
                                  });
                                  
                                  
                                }
                                
                                print('Button pressed');
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
