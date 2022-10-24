import 'package:flutter/material.dart';

class NavigateHomeDetailView extends StatefulWidget {
  const NavigateHomeDetailView({Key? key, this.id}) : super(key: key);

  final String? id;

  @override
  State<NavigateHomeDetailView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeDetailView> {
  String? _id;

  @override
  void initState() {
    super.initState();
    _id = widget.id;
    Future.microtask(() {
      // ignore: no_leading_underscores_for_local_identifiers
      final _modelId = ModalRoute.of(context)?.settings.arguments;

      // if (_modelId is String) {
      //   _id = _modelId;
      // } else {
      //   _id = widget.id;
      // }
      // ignore: avoid_print

      setState(() {
        _id = (_modelId is String ? _modelId : widget.id)!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).errorColor,
      appBar: AppBar(
        title: Text(_id ?? ''),
      ),
    );
  }
}
