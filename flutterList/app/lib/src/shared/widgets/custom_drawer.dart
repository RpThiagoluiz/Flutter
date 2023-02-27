import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 28, right: 16, left: 16, bottom: 16),
          child: Text(
            'Options',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.sync),
          label: Row(
            children: [
              const Text('Sync'),
              const SizedBox(
                width: 28,
              ),
              Text(
                '02/27/2023 at 00:37',
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text('Settings'),
        ),
      ],
    );
  }
}
