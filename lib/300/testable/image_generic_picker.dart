import 'package:flutter/material.dart';

class ImagePickerGenericView extends StatefulWidget {
  const ImagePickerGenericView({Key? key}) : super(key: key);

  @override
  State<ImagePickerGenericView> createState() => _ImagePickerGenericViewState();
}

class _ImagePickerGenericViewState extends State<ImagePickerGenericView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Fetch from galery')),
            ElevatedButton(onPressed: () {}, child: const Text('fetch from normal')),
            ElevatedButton(onPressed: () {}, child: const Text('fetch from ...'))
          ],
        ));
  }
}
