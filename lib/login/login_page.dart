import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/home/home_page.dart';
import 'package:muscii/login/login_model.dart';
import 'package:muscii/login/login_provider.dart';

class LoginPage extends ConsumerWidget {

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    final AsyncValue<LoginModel> auth = ref.watch(userAuthProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (auth.hasValue) {
        if (auth.value?.isLoggedIn == true){
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const HomePage(title: 'MUSCII'))
          );
        }
      }
    });


    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32.0),
        color: primaryColor[100],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('MUSCII',
                    style: headerTextStyle.copyWith(color: accentColor[800])
                  ),
                  Text('get gooder at music notation',
                    style: TextStyle(
                      color: primaryColor[500],
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 64),
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
                      final loginRequest = LoginRequestModel(
                        username: usernameController.text,
                        password: passwordController.text
                      );

                      ref.read(userAuthProvider.notifier).login(
                        loginRequest
                      );
                    },
                    style: bigButtonStyle,
                    child: const Text('Login')
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
                    onPressed: (){
                      final signUpRequest = LoginRequestModel(
                          username: usernameController.text,
                          password: passwordController.text
                      );

                      ref.read(userAuthProvider.notifier).signUp(
                          signUpRequest
                      );
                    },
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