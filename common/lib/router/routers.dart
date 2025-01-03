import 'package:app/page/main_index.dart';
import 'package:common/page/common_index.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:home/page/home_index.dart';
import 'package:order/page/order_index.dart';
import 'package:personal/page/personal_index.dart';

class App {
  static const String root = '/';
}

class Common {
  static const String commonIndex = '/CommonIndex';
}

class Home {
  static const String homeIndex = '/HomeIndex';
}

class Order {
  static const String orderIndex = '/OrderIndex';
}

class Personal {
  static const String personalIndex = '/PersonalIndex';
}

class Routers {
  static FluroRouter router = FluroRouter();

  // 配置路由
  static void configureRouters() {
    router.notFoundHandler = Handler(handlerFunc: (_, __) {
      // 找不到路由时，返回指定提示页面
      return const Scaffold(
        body: Center(
          child: Icon(Icons.error),
        ),
      );
    });

    // 初始化路由
    _initRouter();
  }

  // 注册路由
  static _initRouter() {
    _initCommonIndex();
    _initOrderIndex();
    _initPersonalIndex();
    _initHomeIndex();
    _initRootIndex();
  }

  // 根页面
  static void _initRootIndex() {
    router.define(
      App.root,
      handler: Handler(
        handlerFunc: (_, __) => const MainIndex(),
      ),
    );
  }

  // 首页
  static void _initHomeIndex() {
    router.define(
      Home.homeIndex,
      handler: Handler(
        handlerFunc: (_, __) => const HomeIndex(),
      ),
    );
  }

  // 个人页面
  static void _initPersonalIndex() {
    router.define(
      Personal.personalIndex,
      handler: Handler(
        handlerFunc: (_, __) => const PersonalIndex(),
      ),
    );
  }

  // 订单页面
  static void _initOrderIndex() {
    router.define(
      Order.orderIndex,
      handler: Handler(
        handlerFunc: (_, __) => const OrderIndex(),
      ),
    );
  }

  // 公共页面
  static void _initCommonIndex() {
    router.define(
      Common.commonIndex,
      handler: Handler(
        handlerFunc: (_, __) => const CommonIndex(),
      ),
    );
  }

}
