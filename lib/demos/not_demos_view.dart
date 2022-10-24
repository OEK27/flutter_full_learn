// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NotDemos extends StatelessWidget {
  const NotDemos({Key? key}) : super(key: key);
  final String _description = 'Add a note';
  final String _title = 'Create your first note';
  final String _createNote = 'Create a Note';
  final String _importNotes = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleBookWithoutPath),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubstitleWidget(title: _description * 8),
            ),
            const Spacer(),
            _CreateButton(createNote: _createNote),
            TextButton(onPressed: () {}, child: Text(_importNotes)),
            const SizedBox(height: ButtonHeights.buttonNormalHeight),
          ],
        ),
      ),
    );
  }
}

class _CreateButton extends StatelessWidget {
  const _CreateButton({
    Key? key,
    required String createNote,
  })  : _createNote = createNote,
        super(key: key);

  final String _createNote;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
          height: ButtonHeights.buttonNormalHeight,
          child: Center(
            child: Text(
              _createNote,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ));
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required String title,
  })  : _title = title,
        super(key: key);

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: Theme.of(context).textTheme.headline5?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
    );
  }
}

/// Center text widget
class _SubstitleWidget extends StatelessWidget {
  const _SubstitleWidget({Key? key, this.textAlign = TextAlign.center, required this.title}) : super(key: key);

  final TextAlign textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.black, fontWeight: FontWeight.w300));
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 10);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double buttonNormalHeight = 40;
}
