import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_surfing/blocs/auth/auth_bloc.dart';
import 'package:photo_surfing/core/routes.dart';
import 'package:photo_surfing/widgets/custom_button.dart';
import 'package:photo_surfing/widgets/custom_text_feld.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: LoginPage()
        /*BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthErrorState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.massege),
                  backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                ),
              );
            } else if (state is AuthAuthenticatedState) {
              Navigator.of(context).pushNamed('/photo_feed_page');
            }
          },
          builder: (context, state) {
            if(state is AuthLoadingState) {
              return Center(child: CircularProgressIndicator(),);
            }
            return LoginPage();
          },
        ),*/
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController _loginController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.art_track, size: 128,),
        SizedBox(height: 16,),
        Text("Welcome back!",
          style: Theme.of(context).textTheme.labelSmall
        ),
        SizedBox(height: 32,),
        CustomTextField(hintText: "E-mail", obscureText: true, controller: _loginController),
        SizedBox(height: 10,),
        CustomTextField(hintText: "Password", obscureText: true, controller: _passwordController),
        SizedBox(height: 10,),
        CustomButton(text: "Log in", onTap: () {
          /*BlocProvider.of<AuthBloc>(context)
            .add(AuthSignInEvent(
              _loginController.text,
              _passwordController.text
            )
          );*/
          Navigator.pushNamed(context, '/main_page');
        }),
        SizedBox(height: 18,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have a account? ",
              style: Theme.of(context).textTheme.labelSmall
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/register_page', arguments: routes);
              },
              child: Text(
                "Register now!",
                style: Theme.of(context).textTheme.displaySmall
              ),
            )
          ],
        ),
        SizedBox(height: 100,),
      ],
    );
  }
}