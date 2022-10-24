import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MytabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MytabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabController.animateTo(_MytabViews.home.index);
            },
          ),
          bottomNavigationBar:
              BottomAppBar(notchMargin: _notchedValue, child: _MytabView(tabController: _tabController)),
          appBar: AppBar(),
          body: _TabbarView(tabController: _tabController),
        ));
  }
}

class _MytabView extends StatelessWidget {
  const _MytabView({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        padding: EdgeInsets.zero,
        controller: _tabController,
        tabs: _MytabViews.values
            .map((e) => Tab(
                  text: e.name,
                ))
            .toList());
  }
}

class _TabbarView extends StatelessWidget {
  const _TabbarView({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [const ImageLearn(), IconLearnView(), IconLearnView(), IconLearnView()]);
  }
}

enum _MytabViews { home, settings, favorite, profile }

extension _MytabViewExtension on _MytabViews {}
