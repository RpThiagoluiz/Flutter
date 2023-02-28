import 'package:flutter/material.dart';

class UserAvatarButton extends StatelessWidget {
  const UserAvatarButton({super.key});

  @override
  Widget build(BuildContext context) {
    //clean code, próprio código fla oq ele faz.
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        child: const Text('TL'),
      ),
    );
  }
}
