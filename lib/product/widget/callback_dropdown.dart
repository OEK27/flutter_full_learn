import 'package:flutter/material.dart';

import '../../300/call_back_learn.dart';

class CallbackDrown extends StatefulWidget {
  const CallbackDrown({Key? key, required this.onUserSelected}) : super(key: key);

  final void Function(CallbackUser user) onUserSelected;

  @override
  State<CallbackDrown> createState() => _CallbackDrownState();
}

class _CallbackDrownState extends State<CallbackDrown> {
  CallbackUser? _user;

  // ignore: unused_element
  void _updateUser(CallbackUser? item) {
    setState(() {
      _user = item;
    });

    if (_user != null) {
      widget.onUserSelected.call(_user!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallbackUser>(
      value: _user,
      items: CallbackUser.dummyUsers().map((e) {
        return DropdownMenuItem(
          value: e,
          child: Text(e.name, style: Theme.of(context).textTheme.headline3),
        );
      }).toList(),
      onChanged: (CallbackUser? callbackUser) {
        setState(() {
          _user = callbackUser;
        });
      },
    );
  }
}
