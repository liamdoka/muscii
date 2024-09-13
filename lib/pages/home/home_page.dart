import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muscii/components/muscii_scaffold.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/data/auth/auth_provider.dart';
import 'package:muscii/data/user_data/user_data_provider.dart';
import 'package:muscii/game/game_page.dart';
import 'package:muscii/game/test_game_page.dart';
import 'package:muscii/pages/home/setup_card.dart';
import 'package:muscii/router/app_router.gr.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  bool isLoaded = false;


  @override
  Widget build(BuildContext context) {

    final userData = ref.watch(userDataProvider).value;
    final userDataNotifier = ref.watch(userDataProvider.notifier);

    final authNotifier = ref.watch(musciiAuthProvider.notifier);
    ref.listen(musciiAuthProvider, (prevAuth, currentAuth) {
      if (currentAuth.hasValue && currentAuth.isLoading == false) {
        if (currentAuth.value!.isEmpty) {
          context.replaceRoute(const LoginRoute());
        } else if (currentAuth.value!.needsRefresh) {
          authNotifier.refresh();
        } else if (currentAuth.value!.isAuthenticated) {
          userDataNotifier.sync();
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
                  style: headerTextStyle.copyWith(color: primaryColor[950])),
              const SizedBox(height: 12),
              Row(
                children: [
                  SetupCard(
                    title: 'Reading',
                    icon: Icons.queue_music_rounded,
                    onTap: () => context.pushRoute(const GameRoute())
                  ),
                  const SizedBox(width: 16),
                  SetupCard(
                    title: 'Listening',
                    icon: Icons.spatial_audio_rounded,
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const GamePage())),
                  ),
                ],
              ),
              Row(
                children: [
                  if (userData != null) Text("XP: ${userData.xp.toString()}")
                ],
              ),
              TextButton(
                  onPressed: () {
                    ref.read(userDataProvider.notifier).addXp(5);
                  },
                  child: const Text('Add +5 XP'))
            ],
          ),
        ));
  }
}
