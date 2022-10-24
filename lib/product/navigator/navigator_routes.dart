import '../../300/lottie_learn.dart';
import '../../300/navigator/navigate_home_detail_view.dart';
import '../../300/navigator/navigate_home_view.dart';

class NavigatorRoutes {
  static const paraf = "/";
  final items = {
    paraf: (context) => const LottieLearn(),
    NavigateRoute.home.withParaf: (context) => const NavigateHomeView(),
    NavigateRoute.detail.withParaf: (context) => const NavigateHomeDetailView(),
  };
}

enum NavigateRoute { init, home, detail }

extension NavigateRoutesExtension on NavigateRoute {
  String get withParaf => "/$name";
}
