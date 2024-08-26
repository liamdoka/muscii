import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muscii/components/muscii_scaffold.dart';
import 'package:muscii/constants/styles.dart';
import 'package:muscii/login/login_page.dart';
import 'package:muscii/login/login_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MusciiScaffold(
        selected: NavigationPages.profile,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildProfileArea(fullName: "Firstname Lastname", username: "username"),
                _buildMenuButton(
                  onTap: () => print("GoTo: Stats page"),
                  icon: const Icon(Icons.insert_chart),
                  title: "Stats"
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                ref.read(userAuthProvider.notifier).logout();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginPage())
                );
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
            border: Border.all(color: primaryColor[400]!)
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
            const Icon(Icons.chevron_right)
          ],
        ),
      ),
    );
  }

  Widget _buildProfileArea({required String fullName, required String username}) {
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
                      Text(fullName,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: primaryColor[950]
                        ),
                      ),
                      Text("@$username",
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
              _buildStatBlock(title: "Streak", value: "15", icon: const Icon(Icons.local_fire_department)),
              _buildStatBlock(title: "Games played", value: "32"),
              _buildStatBlock(title: "Average", value: "82%")
            ],
          ),
        ],
      ),
    );
  }


  Widget _buildStatBlock({required String title, required String value, Icon? icon}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(title,
            style: const TextStyle(
              fontWeight: FontWeight.w700
            ),
          ),
          const SizedBox(height: 4.0),
          Row(
            children: [
              if (icon != null) icon,
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