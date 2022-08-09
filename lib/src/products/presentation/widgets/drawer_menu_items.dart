import 'package:flutter/material.dart';

class DrawerMenuItems extends StatelessWidget {
  const DrawerMenuItems({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
      ),
      leading: Icon(
        icon,
      ),
      onTap: onTap,
    );
  }
}
