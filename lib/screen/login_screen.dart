import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_surfing/core/routes.dart';
import 'package:photo_surfing/widgets/custom_button.dart';
import 'package:photo_surfing/widgets/custom_text_feld.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _loginController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.art_track, size: 128,),
            SizedBox(height: 16,),
            Text("Welcome back!",
              style: GoogleFonts.inter(
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.w500,
                fontSize: 14
              ),
            ),
            SizedBox(height: 32,),
            CustomTextField(hintText: "Login", obscureText: true, controller: _loginController),
            SizedBox(height: 10,),
            CustomTextField(hintText: "Password", obscureText: true, controller: _passwordController),
            SizedBox(height: 10,),
            CustomButton(text: "Log in", onTap: () {}),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have a account? ",
                  style: GoogleFonts.inter(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/register_page', arguments: routes);
                  },
                  child: Text(
                    "Register now!",
                    style: GoogleFonts.inter(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w500,
                      fontSize: 14
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}