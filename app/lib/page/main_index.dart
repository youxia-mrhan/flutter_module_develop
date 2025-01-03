import 'package:common/page/common_index.dart';
import 'package:common/provider/counter.dart';
import 'package:common/res/common_img_path.dart';
import 'package:common/router/navigator_util.dart';
import 'package:common/router/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainIndex extends StatefulWidget {
  const MainIndex({super.key});

  @override
  State<MainIndex> createState() => _MainIndexState();
}

class _MainIndexState extends State<MainIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter 分模块开发'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                NavigatorUtil.push(context, Common.commonIndex);
              },
              child: const Text('To Common'),
            )
          ],
        ),
      ),
    );
  }
}
