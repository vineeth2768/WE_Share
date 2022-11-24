import 'package:flutter/material.dart';
import 'package:weshare/constants/constants.dart';
import 'package:weshare/views/widgets/text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController _usernameController = TextEditingController();
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
              "Register",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            kHeight15,
            Stack(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShyZWYPEncWdEfHARCCc_DcvFFf1f1qcAgxQ&usqp=CAU",
                  ),
                  backgroundColor: Colors.white,
                ),
                Positioned(
                  bottom: -10,
                  left: 80,
                  child: CircleAvatar(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_a_photo),
                    ),
                  ),
                )
              ],
            ),
            kHeight15,
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextInputField(
                controller: _usernameController,
                labalText: 'Username',
                icon: Icons.person,
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
            kHeight10,
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextInputField(
                controller: _passwordController,
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
                "Register",
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
                  "You already have a account ?",
                  style: TextStyle(fontSize: 14),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
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
