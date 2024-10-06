import 'package:booktrack_flutter/constants.dart';
import 'package:booktrack_flutter/screens/auth/widgets/inputs/email_text_input.dart';
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
