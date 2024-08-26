import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muscii/components/muscii_heading.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/home/home_page.dart';
import 'package:muscii/login/login_model.dart';
import 'package:muscii/login/login_provider.dart';

class SignUpPage extends ConsumerWidget {

  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    final passwordConfirmController = TextEditingController();

    final AsyncValue<LoginModel> auth = ref.watch(userAuthProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (auth.hasValue) {
        if (auth.value?.isLoggedIn == true){
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const HomePage())
          );
        }
      }
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor[100],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        color: primaryColor[100],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MusciiHeading(),
              const SizedBox(height: 64),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Create an account',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: accentColor[800]
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                      controller: usernameController,
                      autocorrect: false,
                      decoration: textFieldStyle.copyWith(
                          hintText: 'Username'
                      )
                  ),
                  const SizedBox(height: 24),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    autocorrect: false,
                    decoration: textFieldStyle.copyWith(
                      hintText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextField(
                    controller: passwordConfirmController,
                    obscureText: true,
                    autocorrect: false,
                    decoration: textFieldStyle.copyWith(
                      hintText: 'Confirm password',
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  TextButton(
                      onPressed: () {
                        if (passwordController.text != passwordConfirmController.text) return;
                        final signUpRequest = LoginRequestModel(
                            username: usernameController.text,
                            password: passwordController.text
                        );

                        ref.read(userAuthProvider.notifier).signUp(signUpRequest);
                      },
                      style: bigButtonStyle,
                      child: const Text('Sign Up')
                  ),
                  const SizedBox(height: 128),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}