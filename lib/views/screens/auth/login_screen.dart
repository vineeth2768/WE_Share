import 'package:flutter/material.dart';
import 'package:weshare/constants/constants.dart';
import 'package:weshare/views/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "We Share",
              style: TextStyle(
                fontSize: 35,
                color: buttonColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            kHeight10,
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextInputField(
                controller: _emailController,
                labalText: 'Email',
                icon: Icons.email,
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextInputField(
                controller: _emailController,
                labalText: 'Password',
                isObscure: true,
                icon: Icons.lock,
              ),
            ),
            kHeight15,
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width - 40,
              height: 45,
              onPressed: () {},
              color: buttonColor,
              child: const Text(
                "Log in",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account ?",
                  style: TextStyle(fontSize: 14),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(color: buttonColor),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
