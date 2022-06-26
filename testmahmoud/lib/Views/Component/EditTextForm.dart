import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:testmahmoud/Views/Component/validation.dart';
=======
>>>>>>> 320eb23a15c2490381983a788315b8a431baa13f

import '../../Models/Modelsign.dart';

class EditTextForm extends StatelessWidget {
  EditTextForm(
      {Key? key,
<<<<<<< HEAD
       this.typeKeyboard,
      this.Check,
=======
>>>>>>> 320eb23a15c2490381983a788315b8a431baa13f
      this.text,
      this.ColorOfLabel,
      this.ColorOfline,
      this.isScure,
      this.value})
      : super(key: key);
<<<<<<< HEAD
  final Check;
  final text;
  final typeKeyboard;
=======
  final text;
>>>>>>> 320eb23a15c2490381983a788315b8a431baa13f
  final ColorOfLabel;
  final ColorOfline;
  final isScure;
  final value;
<<<<<<< HEAD

=======
>>>>>>> 320eb23a15c2490381983a788315b8a431baa13f
  @override
  Widget build(BuildContext context) {
    String? name;
    return TextFormField(
<<<<<<< HEAD
      keyboardType: typeKeyboard,
      validator: Check,
=======
      validator: (val) {
        if (val == null || val.length == 0) return "required";
      },
>>>>>>> 320eb23a15c2490381983a788315b8a431baa13f
      onSaved: (val) {
        sign?[value] = val;
      },
      obscureText: isScure,
      decoration: InputDecoration(
        labelText: "$text",
        labelStyle: TextStyle(
            color: ColorOfLabel, fontSize: 18, fontWeight: FontWeight.bold),
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
