import 'package:flutter/material.dart';
import 'package:flutter_full_learn/200/state_manage/stage_learn_view_model.dart';

class StateManageLearnview extends StatefulWidget {
  const StateManageLearnview({Key? key}) : super(key: key);

  @override
  State<StateManageLearnview> createState() => _StateManageLearnviewState();
}

class _StateManageLearnviewState extends StateLearnViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeVisible();
          },
        ),
        appBar: AppBar(
          backgroundColor: isOpacity ? Colors.red : Colors.green,
          shadowColor: isVisible ? Colors.amber : Colors.blue,
        ));
  }
}
