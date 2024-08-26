import 'package:flutter/material.dart';
import 'package:muscii/constants/styles.dart';

class MusciiHeaderBar extends StatelessWidget implements PreferredSizeWidget {

  const MusciiHeaderBar({ super.key });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: accentColor[800],
      centerTitle: true,
      title: Text('MUSCII',
        style: TextStyle(
            color: primaryColor[50],
            fontWeight: FontWeight.w700,
            letterSpacing: 4.0
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}