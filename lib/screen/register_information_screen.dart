import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_surfing/widgets/custom_button.dart';
import 'package:photo_surfing/widgets/custom_text_feld.dart';

class InfoRegister extends StatelessWidget {
  const InfoRegister({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _loginController = TextEditingController();
    TextEditingController _aboutMeController = TextEditingController();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Debug back"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Add information about you",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.w500,
                fontSize: 14
              ),
            ),
            SizedBox(height: 80,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          width: double.infinity,
                          height: 128,
                        ),
                        Positioned(
                          bottom: -50,
                          child: CircleAvatar(
                            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                            radius: 50,
                          )
                        ),
                      ],
                    ),
                    ]
                  ),
                ),
                SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(text: "Add Avatar", onTap: () {}),
                    SizedBox(width: 10,),
                    CustomButton(text: "Add Header", onTap: () {}),
                  ],
                ),
                SizedBox(height: 18,),
                CustomTextField(hintText: "Login (Necessarily)", obscureText: true, controller: _loginController),
                SizedBox(height: 10,),
                CustomTextField(hintText: "About you", obscureText: true, controller: _aboutMeController),
                SizedBox(height: 10,),
                CustomButton(text: "Continue", onTap: () {}),
                SizedBox(height: 100,),
              ],
            )
          ],
        ),
      )
    );
  }
}