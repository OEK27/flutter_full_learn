import 'package:flutter/material.dart';
import 'package:flutter_full_learn/200/state_manage/stage_manage_learn_view.dart';

abstract class StateLearnViewModel extends State<StateManageLearnview> {
  @override
  void initState() {
    super.initState();
  }

  bool isVisible = false;
  bool isOpacity = false;

  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }
}
