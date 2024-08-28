import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muscii/components/muscii_scaffold.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/game/game_page.dart';
import 'package:muscii/game/test_game_page.dart';
import 'package:muscii/home/setup_card.dart';
import 'package:muscii/login/login_model.dart';
import 'package:muscii/login/login_page.dart';
import 'package:muscii/login/login_provider.dart';

class HomePage extends ConsumerWidget {

  const HomePage({ super.key });

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

    return MusciiScaffold(
      selected: NavigationPages.home,
      child: Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Games',
              style: headerTextStyle.copyWith(color: primaryColor[950])
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                SetupCard(title: 'Listening',
                  icon: Icons.spatial_audio,
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const TestGamePage())
                  ),
                ),
                const SizedBox(width: 16),
                SetupCard(title: 'Reading',
                  icon: Icons.queue_music,
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const GamePage())
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}