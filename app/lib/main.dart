import 'package:app/page/main_index.dart';
import 'package:common/page/common_index.dart';
import 'package:common/provider/counter.dart';
import 'package:common/router/routers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // 确保 Flutter 框架初始化
  Routers.configureRouters(); // 初始化路由

  runApp(ChangeNotifierProvider(
    create: (_) => Counter(),
    child: const MyApp(),
  ));
}

/// 全局key
/// 获取全局context方式：navigatorKey.currentContext
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Basteleur',
        package: PACKAGE_COMMON_NAME,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: Routers.router.generator,
      home: const MainIndex(),
    );
  }
}
