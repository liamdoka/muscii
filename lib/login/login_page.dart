import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muscii/components/muscii_heading.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/data/auth/auth_model.dart';
import 'package:muscii/data/auth/auth_provider.dart';
import 'package:muscii/data/user_data/user_data_model.dart';
import 'package:muscii/data/user_data/user_data_provider.dart';
import 'package:muscii/home/home_page.dart';
import 'package:muscii/sign_up/sign_up_page.dart';

class LoginPage extends ConsumerWidget {

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final authNotifier = ref.watch(musciiAuthProvider.notifier);
    ref.listen(musciiAuthProvider, (_, currentAuth) {
      if (currentAuth.hasValue && !currentAuth.isLoading) {
        if (currentAuth.value!.isAuthenticated) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const HomePage())
          );
        } else if (currentAuth.value!.needsRefresh) {
          authNotifier.refresh();
        }
      }
    });

    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    final AsyncValue<UserDataModel> userData = ref.watch(userDataProvider);
    if (userData.hasValue && userData.value!.username.isNotEmpty) {
      usernameController.text = userData.value!.username;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor[50],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        color: primaryColor[50],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MusciiHeading(),
              const SizedBox(height: 64),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Log In',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Text('Forgot password?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ]
                  ),
                  const SizedBox(height: 32.0),
                  TextButton(
                    onPressed: () {
                      final loginRequest = AuthRequestModel(
                        username: usernameController.text,
                        password: passwordController.text
                      );

                      authNotifier.login(loginRequest);
                    },
                    style: bigButtonStyle,
                    child: const Text('Log In')
                  ),
                  const SizedBox(height: 8),
                  Text('- or -',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: primaryColor[500]
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () =>
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const SignUpPage())
                      ),
                    style: bigButtonStyle,
                    child: const Text('Sign up')
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}