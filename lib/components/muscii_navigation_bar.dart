import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muscii/components/muscii_scaffold.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/home/home_page.dart';
import 'package:muscii/leaderboard/leaderboard_page.dart';
import 'package:muscii/profile/profile_page.dart';

class MusciiNavigationBar extends ConsumerWidget {

  final NavigationPages selected;
  const MusciiNavigationBar({super.key, required this.selected});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: primaryColor[200]!)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MusciiNavigationButton(
            onPressed: () =>               
              Navigator.of(context).pushReplacement(
                PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) => const HomePage(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero
                )
            ),
            iconData: Icons.home,
            isSelected: selected == NavigationPages.home,
          ),
          MusciiNavigationButton(
            onPressed: () =>
              Navigator.of(context).pushReplacement(
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => const LeaderboardPage(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero
                )
              ),
            iconData: Icons.leaderboard,
            isSelected: selected == NavigationPages.leaderboard,
          ),
          MusciiNavigationButton(
            onPressed: () =>
              Navigator.of(context).pushReplacement(
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => const ProfilePage(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero
                )
              ),
            iconData: Icons.person,
            isSelected: selected == NavigationPages.profile,
          ),
        ],
      ),
    );
  }
}

class MusciiNavigationButton extends StatelessWidget {

  final VoidCallback onPressed;
  final IconData iconData;
  final bool isSelected;

  const MusciiNavigationButton({ super.key, required this.onPressed, required this.iconData, required this.isSelected });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        customBorder: const CircleBorder(),
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: Icon(iconData,
            color: isSelected ? accentColor[700] : primaryColor[950],
            size: 32,
          ),
        )
    );
  }
}