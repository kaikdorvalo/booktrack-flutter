import 'package:booktrack_flutter/constants.dart';
import 'package:booktrack_flutter/screens/auth/widgets/inputs/confirm_button.dart';
import 'package:booktrack_flutter/screens/auth/widgets/inputs/email_text_input.dart';
import 'package:booktrack_flutter/screens/auth/widgets/inputs/password_text_input.dart';
import 'package:booktrack_flutter/screens/auth/widgets/terms/accept_terms.dart';
import 'package:booktrack_flutter/widgets/page_format.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: PageFormat(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(
                      color: primaryContent,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: base200,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                              color: primaryContent,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    EmailTextInput(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                              color: primaryContent,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    PasswordTextInput(),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CheckboxInput(
                    isChecked: false,
                    text: 'Remember me',
                  ),
                  GestureDetector(
                    child: Text(
                      "Forgot Password?",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: error,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              ConfirmButton(
                buttonText: "Sign In",
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => print("aaaaa"),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: accent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
