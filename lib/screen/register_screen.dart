import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_surfing/widgets/custom_button.dart';
import 'package:photo_surfing/widgets/custom_text_feld.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _comfirmPasswordController = TextEditingController();

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
            Text("Create a account",
              style: GoogleFonts.inter(
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.w500,
                fontSize: 14
              ),
            ),
            SizedBox(height: 32,),
            CustomTextField(hintText: "Login", obscureText: false, controller: _emailController),
            SizedBox(height: 10,),
            CustomTextField(hintText: "Password", obscureText: true, controller: _passwordController),
            SizedBox(height: 10,),
            CustomTextField(hintText: "Comfirm password", obscureText: true, controller: _comfirmPasswordController),
            SizedBox(height: 10,),
            CustomButton(text: "Register", onTap: () {
              if(_passwordController.text == _comfirmPasswordController.text && _passwordController.text.isNotEmpty){
                Navigator.pushNamed(context, '/register_information_page');
              } else {
                debugPrint("Cofirm password");
              }
            }),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You have a account? ",
                  style: GoogleFonts.inter(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text(
                    "Log in now!",
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