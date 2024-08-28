import 'package:flutter/material.dart';
import 'package:muscii/components/muscii_header_bar.dart';
import 'package:muscii/components/muscii_navigation_bar.dart';
import 'package:muscii/constants/styles.dart';

enum NavigationPages {
  home,
  leaderboard,
  profile
}

class MusciiScaffold extends StatelessWidget {

  final Widget child;
  final NavigationPages? selected;

  const MusciiScaffold({ super.key, required this.child, this.selected });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MusciiHeaderBar(),
        bottomNavigationBar: MusciiNavigationBar(
          selected: selected ?? NavigationPages.home,
        ),
        body: Container(
          color: primaryColor[50],
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: child,
          ),
        )
    );
  }
}