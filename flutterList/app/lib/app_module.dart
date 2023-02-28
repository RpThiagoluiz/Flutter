import 'package:flutter_list/src/configuration/configuration_page.dart';
import 'package:flutter_list/src/home/home_module.dart';
import 'package:flutter_list/src/stores/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

// Modularização é a msm coisa que vc chamar um app dentro de outro.
// uma rota '/' pode existir diferentes formas, no modulo dela.
// vc consegue mudar o nome dela aqui assim que vc chamar a /home ele volta pra ela.
class AppModule extends Module {
  // Store igual redux
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => AppStore())
        // AutoBind.singleton(AppStore.new) <<--NEW-->>
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ChildRoute(
          '/config',
          child: (context, args) => const ConfigurationPage(),
        ),
      ];
}
