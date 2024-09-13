import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muscii/components/muscii_scaffold.dart';
import 'package:muscii/constants/styles.dart';

@RoutePage()
class LeaderboardPage extends ConsumerWidget {

  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MusciiScaffold(
      selected: NavigationPages.leaderboard,
      child: Container(
        padding: const EdgeInsets.all(24.0),
        child: Text("Leaderboard",
          style: headerTextStyle.copyWith(color: primaryColor[950]),
        ),
      )
    );
  }
}