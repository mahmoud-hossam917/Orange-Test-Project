import 'package:flutter/material.dart';
import 'package:testmahmoud/Views/Component/EditTextForm.dart';
import 'package:testmahmoud/Views/Component/Editbutton.dart';
import 'package:testmahmoud/Views/Component/edittext.dart';

import 'Login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: height * .05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EditText(
                      text: "Orange ",
                      color: Colors.orange,
                      fontsize: 25.0,
                      fontwight: FontWeight.bold,
                      textDecoration: TextDecoration.none,

                    ),
                    EditText(
                      text: "Digtal Center",
                      color: Colors.black,
                      fontsize: 25.0,
                      fontwight: FontWeight.bold,
                      textDecoration: TextDecoration.none,

                    ),
                  ],
                ),
                Container(
                  height: height * .09,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width * .02,
                    ),
                    EditText(
                      text: "Sign Up",
                      color: Colors.black,
                      fontsize: 34.0,
                      fontwight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .07,
                ),
                Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: EditTextForm(
                              text: "Name",
                              ColorOfLabel: Colors.grey[400],
                              ColorOfline: Colors.deepOrange,
                              isScure: false),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: EditTextForm(
                              text: "Email",
                              ColorOfLabel: Colors.grey[400],
                              ColorOfline: Colors.deepOrange,
                              isScure: false),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: EditTextForm(
                            text: "Password",
                            ColorOfLabel: Colors.grey[400],
                            ColorOfline: Colors.deepOrange,
                            isScure: true,
                          ),
                        ),
                      ],
                    )),

                SizedBox(
                  height: height * .06,
                ),
                EditButton(
                  onPressed:(){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Login()));
                  } ,
                  height: height * .06,
                  width: width * .9,
                  text: "Sign Up",
                  fontsize: 16.0,
                  fontwight: FontWeight.bold,
                  color: Colors.white,
                  colorOfBorder: Colors.deepOrange,
                  colorOfButton: Colors.deepOrange,
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
