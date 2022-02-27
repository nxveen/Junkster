import 'package:flutter/material.dart';
import 'package:junkster/under_part.dart';
import 'package:junkster/upside.dart';
import 'package:junkster/pagetitle.dart';
import 'package:junkster/constants.dart';
import 'package:junkster/screens.dart';
import 'package:junkster/rounded_input.dart';
import 'package:junkster/widgets.dart';
import 'package:junkster/rounded_button.dart';
import 'package:junkster/choice.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const Upside(),
                const PageTitle(title: 'Login to your Account'),
                Padding(
                  padding: const EdgeInsets.only(top: 320),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 8),
                        iconButton(context),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'Or use your E-mail account',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Martel',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Form(
                            child: Column(
                          children: [
                            const RoundedInputField(
                                hintText: "Email", icon: Icons.email),
                            const RoundedPasswordField(),
                            switchListTile(),
                            RoundedButton(text: 'LOGIN', press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder:(context) => Choice()),);
                            }),
                            const SizedBox(
                              height: 10,
                            ),
                            UnderPart(
                              title: 'Create an Account  ',
                              navigatorText: 'Sign Up',
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignUpScreen()));
                              },
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

switchListTile() {
  return Padding(
    padding: const EdgeInsets.only(left: 50, right: 40),
    child: SwitchListTile(
      dense: true,
      title: const Text(
        'Remember Me',
        style:
            TextStyle(fontSize: 16, fontFamily: 'Martel', color: Colors.black),
      ),
      value: true,
      activeColor: kPrimaryColor,
      onChanged: (val) {},
    ),
  );
}

iconButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Icon(Icons.facebook),
      SizedBox(
        width: 30,
      ),
      Icon(Icons.email),
    ],
  );
}
