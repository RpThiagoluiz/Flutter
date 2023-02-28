import 'package:flutter/material.dart';
import 'package:flutter_list/src/home/widgets/custom_drawer.dart';
import 'package:flutter_list/src/shared/widgets/user_avatar_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('List'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserAvatarButton(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: SegmentedButton<int>(
                /*
                * não precisa componentizar...
                * componentização não é para reduzir código,
                mas sim para facilitar o seguimento de leitura de código.
                */
                segments: const [
                  ButtonSegment(
                    value: 0,
                    label: Text('All'),
                  ),
                  ButtonSegment(
                    value: 1,
                    label: Text('Pending'),
                  ),
                  ButtonSegment(
                    value: 2,
                    label: Text('Finish'),
                  ),
                  ButtonSegment(
                    value: 3,
                    label: Text('Disabled'),
                  )
                ],
                selected: const {0},
                onSelectionChanged: (values) {},
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('New item'),
        onPressed: () {
          // '/home/newItem' acessar a rota
          // contudo o modular entende que vc está na home
          // e dando um ./ ele segue a vida
          Navigator.of(context).pushNamed('./newItem');
        },
      ),
    );
  }
}
