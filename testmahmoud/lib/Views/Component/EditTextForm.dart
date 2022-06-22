import 'package:flutter/material.dart';
class EditTextForm extends StatelessWidget {
  const EditTextForm({Key? key,this.text, this.ColorOfLabel, this.ColorOfline, this.isScure}) : super(key: key);
   final text;
   final ColorOfLabel;
   final ColorOfline;
   final isScure;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isScure,
      decoration: InputDecoration(
        labelText: "$text",
        labelStyle: TextStyle(
            color: ColorOfLabel,
            fontSize: 18,
            fontWeight: FontWeight.bold),
        focusColor: Colors.orange,

        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorOfline),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorOfline),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorOfline),
        ),
      ),
      cursorColor: Colors.orange,
    );
  }
}
