import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/login/login_provider.dart';

class MusciiNavigationBar extends ConsumerWidget {

  const MusciiNavigationBar({super.key});

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
            onPressed: () => print('bruh'),
            iconData: Icons.home,
            isSelected: true,
          ),
          MusciiNavigationButton(
            onPressed: () => print('bruh'),
            iconData: Icons.leaderboard,
            isSelected: false,
          ),
          MusciiNavigationButton(
            onPressed: () {
              ref.read(userAuthProvider.notifier).logout();
            },
            iconData: Icons.person,
            isSelected: false,
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