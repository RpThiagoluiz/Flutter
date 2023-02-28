import 'package:flutter/material.dart';
import 'package:flutter_list/src/configuration/configuration_page.dart';
import 'package:flutter_list/src/home/edit_task_board_page.dart';
import 'package:flutter_list/src/home/home_page.dart';
import 'package:flutter_list/src/stores/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'src/shared/themes/themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Modulo inicial será o '/home' setado no app_module
    // o '/' depois do modulo seria a segunda rota de acesso dele.
    Modular.setInitialRoute('/home/');

    final appStore = context.watch<AppStore>(
      // Seletor de re atividade, useEffect com dependência.
      (store) => store.themeMode,
    );

    return MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        themeMode: appStore.themeMode.value,
        theme: lightTheme,
        darkTheme: darkTheme,
        routerDelegate: Modular.routerDelegate,
        routeInformationParser: Modular.routeInformationParser);
  }
}
