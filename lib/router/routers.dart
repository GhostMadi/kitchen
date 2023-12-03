
import 'package:flutter_application_1/router/routing_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/start/first1-3/screen_2.dart';
import 'package:flutter_application_1/start/register2/screen_4.dart';


class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case cityScreen:
        return CupertinoPageRoute(builder: (context) => Screen_4());
      default:
        return CupertinoPageRoute(builder: (context) => Screen_2());

    }
  }
}
