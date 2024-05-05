import 'package:common/model/message.dart';
import 'package:common/provider/counter.dart';
import 'package:common/router/routers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final Message? message;

  const HomePage({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomePage：${message?.info}',
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<Counter>(
              builder: (_, counter, __) => Text(
                '${counter.count}',
                style: const TextStyle(fontSize: 26),
              ),
            ),
            Consumer<Counter>(
              builder: (_, counter, __) => ElevatedButton(
                onPressed: () {
                  counter.compute();
                },
                child: const Text(
                  '+1',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Order.orderPage,
                  arguments: Message('from - home - info'),
                );
              },
              child: const Text(
                'To Order Page',
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
