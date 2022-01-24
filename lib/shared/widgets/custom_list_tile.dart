import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.title,
    this.subtitle,
    required this.iconData,
    this.onTap,
    this.isTrailing = false,
  }) : super(key: key);
  final String title;
  final IconData iconData;
  final String? subtitle;
  final Function()? onTap;
  final bool isTrailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        subtitle ?? '',
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w900,
          fontSize: 16.0,
        ),
      ),
      leading: Icon(
        iconData,
        size: 28,
        color: Colors.black,
      ),
      trailing: isTrailing
          ? const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            )
          : const SizedBox(
              width: 0,
            ),
    );
  }
}
