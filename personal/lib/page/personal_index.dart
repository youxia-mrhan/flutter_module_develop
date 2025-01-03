import 'package:common/provider/counter.dart';
import 'package:common/router/navigator_util.dart';
import 'package:common/router/routers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PersonalIndex extends StatefulWidget {
  const PersonalIndex({super.key});

  @override
  State<PersonalIndex> createState() => _PersonalIndexState();
}

class _PersonalIndexState extends State<PersonalIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PersonalIndex')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Counter>(builder: (_, state, __) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${state.count}'),
                  IconButton(
                      onPressed: () {
                        state.compute();
                      },
                      icon: const Icon(Icons.add)),
                ],
              );
            }),
            ElevatedButton(
              onPressed: () {
                NavigatorUtil.push(context, Home.homeIndex);
              },
              child: const Text('To Home'),
            )
          ],
        ),
      ),
    );
  }
}
