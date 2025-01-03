import 'package:common/router/routers.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

/// 路由工具类
/// 如果所在类没有 context，可以使用 全局context：navigatorKey.currentContext
class NavigatorUtil {

  /// 前往页面
  static Future<dynamic> push(
    BuildContext context,
    path, {
    bool replace = false, // 替换，进入新的页面时，将当前页面销毁
    bool clearStack = false, // 清空路由栈，进入新的页面时，其他实例的页面全部销毁
    Object? arguments, // 传递的参数
    TransitionType? transition, // 页面跳转的动画 类型
  }) {
    return Routers.router.navigateTo(
      context,
      path,
      replace: replace,
      clearStack: clearStack,
      transition: transition ?? TransitionType.inFromRight, // 默认跳转动画，从右侧进入
      routeSettings: RouteSettings(
        arguments: arguments,
      ),
    );
  }

}
