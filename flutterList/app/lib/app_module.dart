import 'package:flutter_list/src/configuration/configuration_page.dart';
import 'package:flutter_list/src/configuration/services/configuration_service.dart';
import 'package:flutter_list/src/home/home_module.dart';
import 'package:flutter_list/src/shared/services/realm/realm_config.dart';
import 'package:flutter_list/src/stores/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:realm/realm.dart';

// Modularização é a msm coisa que vc chamar um app dentro de outro.
// uma rota '/' pode existir diferentes formas, no modulo dela.
// vc consegue mudar o nome dela aqui assim que vc chamar a /home ele volta pra ela.
class AppModule extends Module {
  // Store igual redux
  @override
  // ignore: lines_longer_than_80_chars
  List<Bind> get binds => [
        Bind.instance<Realm>(Realm(config)),
        // factory, <ConfigurationService> vai permitir que agente recupere a
        //informação somente pela abstração da classe.
        AutoBind.factory<ConfigurationService>(ConfigurationServiceImpl.new),
        AutoBind.singleton(
          AppStore.new,
        ) // Bind.singleton((i) => AppStore()) <<--old-->>
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
