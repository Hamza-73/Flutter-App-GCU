import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Z Fitters",
        // "The Wardrobe Loft",
        style: TextStyle(
          fontWeight: FontWeight.w900,
          letterSpacing: 2.5,
          color: Colors.white,
          fontStyle: FontStyle.italic,
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
