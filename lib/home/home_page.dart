import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/game/game_page.dart';
import 'package:muscii/home/navigation_bar.dart';
import 'package:muscii/home/setup_card.dart';
import 'package:muscii/login/login_model.dart';
import 'package:muscii/login/login_page.dart';
import 'package:muscii/login/login_provider.dart';

class HomePage extends ConsumerWidget {

  final String title;
  const HomePage({ super.key, required this.title });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<LoginModel> auth = ref.watch(userAuthProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (auth.hasValue) {
        if (auth.value?.isLoggedIn == false){
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const LoginPage())
          );
        }
      }
    });


    return Scaffold(
      appBar: AppBar(
        backgroundColor: accentColor[800],
        centerTitle: true,
        title: Text('MUSCII',
          style: TextStyle(
            color: primaryColor[50],
            fontWeight: FontWeight.w700,
            letterSpacing: 4.0
          ),
        ),
      ),
      bottomNavigationBar: const MusciiNavigationBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SetupCard(title: 'Treble Clef',
                icon: Icons.music_note,
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GamePage())
                ),
              ),
              SetupCard(title: 'Treble Clef',
                icon: Icons.music_note,
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GamePage())
                ),
              ),
              SetupCard(title: 'Treble Clef',
                icon: Icons.music_note,
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GamePage())
                ),
              ),
              SetupCard(title: 'Treble Clef',
                icon: Icons.music_note,
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GamePage())
                ),
              ),
              SetupCard(title: 'Treble Clef',
                icon: Icons.music_note,
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GamePage())
                ),
              ),
              SetupCard(title: 'Treble Clef',
                icon: Icons.music_note,
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GamePage())
                ),
              ),
              SetupCard(title: 'Treble Clef',
                icon: Icons.music_note,
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GamePage())
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}