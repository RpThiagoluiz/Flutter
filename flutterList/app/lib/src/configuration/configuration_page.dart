import 'package:flutter/material.dart';
import 'package:flutter_list/src/stores/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    final appStore = context.watch<AppStore>(
      // Seletor de re atividade, useEffect com dependência.
      (store) => store.themeMode,
    );

    final scaffold = Scaffold(
      appBar: AppBar(title: const Text('List')),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 40),
            Text(
              'Theme',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 15),
            RadioListTile(
              value: ThemeMode.system,
              groupValue: appStore.themeMode.value,
              title: const Text('System'),
              onChanged: appStore.changeThemeMode,
              // Assim vc pega manual, da outra forma vc pega pela função criada.
              // onChanged: (mode) {
              //   appStore.themeMode.value = mode!;
              // },
            ),
            RadioListTile(
              value: ThemeMode.light,
              groupValue: appStore.themeMode.value,
              title: const Text('Light'),
              onChanged: appStore.changeThemeMode,
            ),
            RadioListTile(
              value: ThemeMode.dark,
              groupValue: appStore.themeMode.value,
              title: const Text('Dark'),
              onChanged: appStore.changeThemeMode,
            ),
            const SizedBox(height: 20),
            Text(
              'Manager Data',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 50),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Clean Cache and Reset App'),
            )
          ],
        ),
      ),
    );
    return scaffold;
  }
}
