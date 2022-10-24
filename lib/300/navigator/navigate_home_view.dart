import 'package:flutter/material.dart';

import '../../product/mixin/navigator_mixin.dart';
import '../../product/navigator/navigator_routes.dart';

class NavigateHomeView extends StatefulWidget {
  const NavigateHomeView({Key? key}) : super(key: key);

  @override
  State<NavigateHomeView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeView> with NavigatorMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
        onPressed: () async {
          router.pushToPage(NavigateRoute.detail, arguments: 'oek10');
          // await NavigatorManager.instance.pushToPage(NavigateRoute.detail, arguments: 'oek10');
          // Navigator.of(context).pushNamed("/asdasd", arguments: "abc");
        },
        child: const Icon(Icons.abc_rounded),
      ),
      appBar: AppBar(
        title: Text(toString()),
      ),
    );
  }
}
