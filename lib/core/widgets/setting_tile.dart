import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? trailing;

  const SettingTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey),
      title: Text(title),

      trailing: trailing != null
          ? Text(
              trailing!,
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            )
          : const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.grey,
            ),

      onTap: () {},
    );
  }
}