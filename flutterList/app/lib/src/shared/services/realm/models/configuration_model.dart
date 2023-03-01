import 'package:realm/realm.dart';

part 'configuration_model.g.dart'; //declaração global

// Depois de referenciar essa estrutura vc roda o comando realm abaixo
// flutter pub run realm generate
// Tecnicamente ele está criando uma base de dados dentro do gerenciamento de dados
// Isso torna a persistência de dados síncrona diff do react

@RealmModel()
class _ConfigurationModel {
  late String themeModeName;
  late DateTime? syncDate;
}
