// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({Key? key}) : super(key: key);

  @override
  State<AlertLearn> createState() => AlertLearnState();
}

class AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        final response = await showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return const _ImageZoomDialog();
          },
        );
      }),
    );
  }
}

// ignore: unused_element
class _UpdateDialog extends StatelessWidget {
  const _UpdateDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Version update!'),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: const Text('Update2')),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'))
      ],
    );
  }
}

class Keys {
  static const versionUpdate = 'version update';
}

class UpdateDialog extends AlertDialog {
  UpdateDialog({Key? key, required BuildContext context})
      : super(
          key: key,
          title: const Text(Keys.versionUpdate),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: const Text('Update2')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Close'))
          ],
        );
}

class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog({
    Key? key,
  }) : super(key: key);
  final _url = 'https://picsum.photos/200';
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      child: Dialog(
        insetPadding: EdgeInsets.zero,
        child: Image.network(
          _url,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.6,
        ),
      ),
    );
  }
}
