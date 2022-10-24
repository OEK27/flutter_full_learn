import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/language_learn.dart';

class TextFildLearn extends StatefulWidget {
  const TextFildLearn({Key? key}) : super(key: key);

  @override
  State<TextFildLearn> createState() => _TextFildLearnState();
}

class _TextFildLearnState extends State<TextFildLearn> {
  final key = GlobalKey();
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Column(
          children: [
            TextField(
              maxLength: 20,
              buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
                return _animatedContainer(currentLength);
              },
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              autofillHints: const [AutofillHints.email],
              focusNode: focusNodeTextFieldOne,
              inputFormatters: [TextProjectInputFormater()._formatter],
              textInputAction: TextInputAction.next,
              decoration: _InputDecarotor().emailInput,
            ),
            TextFormField(
              focusNode: focusNodeTextFieldTwo,
              minLines: 2,
              maxLines: 4,
              style: const TextStyle(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: const Duration(milliseconds: 100),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green,
    );
  }
}

class TextProjectInputFormater {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      return oldValue;
    }
    return oldValue;
  });
}

class _InputDecarotor {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
  );
}
