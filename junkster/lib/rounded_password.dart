import 'package:flutter/material.dart';
import 'package:junkster/constants.dart';
import 'package:junkster/text_field.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              color: Colors.black,
            ),
            hintText: 'Password',
            hintStyle: const TextStyle(fontFamily: 'Martel'),
            border: InputBorder.none),
      ),
    );
  }
}
