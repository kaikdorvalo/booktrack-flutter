import 'package:booktrack_flutter/constants.dart';
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
            Container(
              decoration: const BoxDecoration(
                color: base200,
              ),
              height: 100.0,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      fillColor: base100,
                      hintText: "Your first name here",
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
