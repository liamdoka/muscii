import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muscii/components/muscii_heading.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/data/auth/auth_model.dart';
import 'package:muscii/data/auth/auth_provider.dart';
import 'package:muscii/home/home_page.dart';

class SignUpPage extends ConsumerWidget {

  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    final passwordConfirmController = TextEditingController();

    final auth = ref.watch(musciiAuthProvider);
    final authNotifier = ref.watch(musciiAuthProvider.notifier);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (auth.hasValue && auth.value!.isAuthenticated) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomePage())
        );
      } else if (auth.hasValue && auth.value!.needsRefresh) {
        authNotifier.refresh();
      }
    });

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: primaryColor[50],
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
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
                        final signUpRequest = AuthRequestModel(
                            username: usernameController.text,
                            password: passwordController.text
                        );

                        authNotifier.register(signUpRequest);
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