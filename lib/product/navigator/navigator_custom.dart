// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/300/mobx_image_picker/view/mobx_image_upload_view.dart';
import 'package:flutter_full_learn/300/navigator/navigate_home_detail_view.dart';
import 'package:flutter_full_learn/300/navigator/navigate_home_view.dart';

import '../../300/lottie_learn.dart';
import '../../main.dart';
import 'navigator_routes.dart';

mixin NavigatorCustom<T extends MyApp> on Widget {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    if (routeSettings.name?.isEmpty ?? true) {
      _navigateToNormal(const MobxImageUpload());
    }

    final _routes = routeSettings.name == NavigatorRoutes.paraf
        ? NavigateRoute.init
        : NavigateRoute.values.byName(routeSettings.name!.substring(1));

    switch (_routes) {
      case NavigateRoute.init:
        return _navigateToNormal(const LottieLearn());
      case NavigateRoute.home:
        return _navigateToNormal(const NavigateHomeView());

      case NavigateRoute.detail:
        final _id = routeSettings.arguments;
        return _navigateToNormal(NavigateHomeDetailView(id: _id is String ? _id : null), isFullScreenDialog: true);
    }
  }

  Route<dynamic>? _navigateToNormal(Widget child, {bool? isFullScreenDialog}) {
    return MaterialPageRoute(
      fullscreenDialog: isFullScreenDialog ?? false,
      builder: (context) {
        return child;
      },
    );
  }
}
