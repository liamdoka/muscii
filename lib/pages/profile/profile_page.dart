import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muscii/components/muscii_scaffold.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/data/auth/auth_provider.dart';
import 'package:muscii/data/user_data/user_data_model.dart';
import 'package:muscii/data/user_data/user_data_provider.dart';
import 'package:muscii/router/app_router.gr.dart';

@RoutePage()
class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final userData = ref.watch(userDataProvider).value;

    return MusciiScaffold(
        selected: NavigationPages.profile,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildProfileArea(userData),
                _buildMenuButton(
                  onTap: () => print("GoTo: Stats page"),
                  icon: const Icon(Icons.insert_chart_rounded),
                  title: "Stats"
                ),
                _buildMenuButton(
                  onTap: (){},
                  icon: const Icon(Icons.settings_rounded),
                  title: "Settings")
              ],
            ),
            TextButton(
              onPressed: () {
                ref.read(musciiAuthProvider.notifier).logout();
                context.replaceRoute(const LoginRoute());
              },
              child: const Text("Log out",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                ),
              )
            )
          ],
        )
    );
  }

  Widget _buildMenuButton({required VoidCallback onTap, required Icon icon, required String title}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: primaryColor[300]!, strokeAlign: BorderSide.strokeAlignCenter)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon,
                const SizedBox(width: 16.0),
                Text(title,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ],
            ),
            const Icon(Icons.chevron_right_rounded)
          ],
        ),
      ),
    );
  }

  Widget _buildProfileArea(UserDataModel? userData) {

    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100, width: 100,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: accentColor[400]
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userData?.displayName ?? userData?.username ?? '',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: primaryColor[950]
                        ),
                      ),
                      Text("@${userData?.username ?? ''}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: primaryColor[500]
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStatBlock(title: "Streak", value: userData?.streak.toString() ?? '0', icon: const Icon(Icons.local_fire_department, color: Colors.deepOrange)),
              _buildStatBlock(title: "XP", value: userData?.xp.toString() ?? '0'),
              _buildStatBlock(title: "Accuracy",
                value: userData != null
                  ? "${(userData.correctAnswers / (userData.correctAnswers + (userData.incorrectAnswers == 0 ? 1 : userData.incorrectAnswers)) * 100).toStringAsFixed(0)}%"
                  : '0%'
              )
            ],
          ),
        ],
      ),
    );
  }


  Widget _buildStatBlock({required String title, required String value, Icon? icon}) {
    return Container(
      // decoration: BoxDecoration(
      //   border: Border.all(color: primaryColor[300]!, width: 2),
      //   borderRadius: BorderRadius.circular(16.0)
      // ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Text(title,
            style: TextStyle(
              color: accentColor[800]!,
              fontWeight: FontWeight.w700
            ),
          ),
          const SizedBox(height: 4.0),
          Row(
            children: [
              icon ?? const SizedBox.shrink(),
              Text(value,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0
                ),
              )
            ],
          )
        ]
      ),
    );
  }
}