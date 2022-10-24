import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final _pageController = PageController(viewportFraction: 0.7);

  int _currentPageIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(_currentPageIndex.toString()),
        ),
        const Spacer(),
        FloatingActionButton(
          onPressed: () {
            _pageController.previousPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
          },
          child: const Icon(Icons.chevron_left),
        ),
        FloatingActionButton(
          onPressed: () {
            _pageController.previousPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
          },
          child: const Icon(Icons.chevron_left),
        ),
      ]),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: const [StackLearn(), ImageLearn()],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
