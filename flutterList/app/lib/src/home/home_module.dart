import 'package:flutter_list/src/home/edit_task_board_page.dart';
import 'package:flutter_list/src/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          '/newItem',
          child: (context, args) => const EditTaskBoardPage(),
        ),
      ];
}
