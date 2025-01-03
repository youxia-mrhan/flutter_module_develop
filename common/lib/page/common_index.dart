import 'package:common/provider/counter.dart';
import 'package:common/router/navigator_util.dart';
import 'package:common/router/routers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const String PACKAGE_COMMON_NAME = "common";

class CommonIndex extends StatefulWidget {
  const CommonIndex({super.key});

  @override
  State<CommonIndex> createState() => _CommonIndexState();
}

class _CommonIndexState extends State<CommonIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CommonIndex')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Counter>(
                builder: (_,state,__) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${state.count}'),
                      IconButton(onPressed: () {
                        state.compute();
                      }, icon: const Icon(Icons.add)),
                    ],
                  );
                }
            ),
            ElevatedButton(
              onPressed: () {
                NavigatorUtil.push(context, Order.orderIndex);
              },
              child: const Text('To Order'),
            )
          ],
        ),
      ),
    );
  }
}
