import 'package:common/provider/counter.dart';
import 'package:common/router/navigator_util.dart';
import 'package:common/router/routers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderIndex extends StatefulWidget {
  const OrderIndex({super.key});

  @override
  State<OrderIndex> createState() => _OrderIndexState();
}

class _OrderIndexState extends State<OrderIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OrderIndex')),
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
                NavigatorUtil.push(context, Personal.personalIndex);
              },
              child: const Text('To Personal'),
            )
          ],
        ),
      ),
    );
  }
}
