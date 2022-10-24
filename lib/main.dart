import 'package:flutter/material.dart';
import 'package:flutter_full_learn/300/lottie_learn.dart';
import 'package:flutter_full_learn/product/constant/project_items.dart';
import 'package:flutter_full_learn/product/global/theme_notfier.dart';
import 'package:flutter_full_learn/product/navigator/navigator_custom.dart';
import 'package:provider/provider.dart';

import '300/mobx_image_picker/view/mobx_image_upload_view.dart';
import 'product/navigator/navigator_manager.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      // Provider(create: (_) => ResourceContext()),
      ChangeNotifierProvider<ThemeNotifier>(create: (context) => ThemeNotifier())
    ],
    builder: (context, child) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget with NavigatorCustom {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ProjectItems.projectName,
      debugShowCheckedModeBanner: false,
      theme: context.watch<ThemeNotifier>().currentTheme,

      // ThemeData.dark().copyWith(
      //   tabBarTheme: const TabBarTheme(
      //     labelColor: Colors.white,
      //     unselectedLabelColor: Colors.red,
      //     indicatorSize: TabBarIndicatorSize.label,
      //   ),
      //   bottomAppBarTheme: const BottomAppBarTheme(shape: CircularNotchedRectangle()),
      //   progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
      //   listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
      //   cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      //   errorColor: ColorsItems.sulu,
      //   textSelectionTheme: const TextSelectionThemeData(
      //     selectionColor: Colors.red,
      //     cursorColor: Colors.green,
      //   ),
      //   inputDecorationTheme: const InputDecorationTheme(
      //       filled: true,
      //       fillColor: Colors.white,
      //       iconColor: Colors.red,
      //       labelStyle: TextStyle(color: Colors.lime),
      //       border: OutlineInputBorder(),
      //       floatingLabelStyle: TextStyle(
      //           backgroundColor: Colors.black87, color: Colors.red, fontSize: 24, fontWeight: FontWeight.w600)),
      //   textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.red)),
      //   appBarTheme: const AppBarTheme(
      //     centerTitle: true,
      //     systemOverlayStyle: SystemUiOverlayStyle.light,
      //     backgroundColor: Colors.transparent,
      //     elevation: 0,
      //   ) ),
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: ((context) {
          return const LottieLearn();
        }));
      },
      // routes: NavigatorRoutes().items,
      onGenerateRoute: onGenerateRoute,
      navigatorKey: NavigatorManager.instance.navigatorGlobalKey,

      home: const MobxImageUpload(),
    );
  }
}
