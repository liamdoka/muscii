import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muscii/components/muscii_scaffold.dart';

class LeaderboardPage extends ConsumerWidget {

  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MusciiScaffold(
      selected: NavigationPages.leaderboard,
      child: Container(
        padding: const EdgeInsets.all(32.0),
        child: const Text("leaderboard"),
      )
    );
  }
}