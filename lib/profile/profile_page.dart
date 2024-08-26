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
        child: Container(
          color: primaryColor[50],
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
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
                                  Text("FirstName LastName",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: primaryColor[950]
                                    ),
                                  ),
                                  Text("@username",
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
                          buildStatBlock(title: "Streak", value: "15", icon: const Icon(Icons.local_fire_department)),
                          buildStatBlock(title: "Games played", value: "32"),
                          buildStatBlock(title: "Average", value: "82%")
                        ],
                      ),
                    ],
                  ),
                ),
                buildMenuButton(
                  onTap: () {
                    ref.read(userAuthProvider.notifier).logout();
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const LoginPage())
                    );
                  },
                  icon: const Icon(Icons.logout),
                  title: "Log out"
                ),
              ],
            ),
          ),
        )
    );
  }


  Widget buildMenuButton({required VoidCallback onTap, Icon? icon, required String title}) {
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
            Text(title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700
              ),
            ),
            icon ?? const Icon(Icons.chevron_right)
          ],
        ),
      ),
    );
  }

  Widget buildStatBlock({required String title, required String value, Icon? icon}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        // border: Border.symmetric(vertical: BorderSide(color: primaryColor[400]!)),
        color: primaryColor[50],
      ),
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