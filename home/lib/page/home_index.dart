import 'package:common/page/common_index.dart';
import 'package:common/provider/counter.dart';
import 'package:common/res/common_img_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeIndex extends StatefulWidget {
  const HomeIndex({super.key});

  @override
  State<HomeIndex> createState() => _HomeIndexState();
}

class _HomeIndexState extends State<HomeIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeIndex')),
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
            Image.asset(CommonImgPath.ts, package: PACKAGE_COMMON_NAME),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('To First Page'),
            )
          ],
        ),
      ),
    );
  }
}
