import 'package:flutter/material.dart';

class UserAvatarButton extends StatelessWidget {
  const UserAvatarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        child: const Text('TL'),
      ),
    );
  }
}
