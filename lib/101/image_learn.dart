// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  final String _imagePath =
      'https://productimages.hepsiburada.net/s/58/375/11335898890290.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 100,
          width: 300,
          child: PngImage(
            name: ImageItems().appleBookWithoutPath,
          ),
        ),
        Image.network(
          _imagePath,
          errorBuilder: ((context, error, stackTrace) =>
              PngImage(name: ImageItems().appleBookWithoutPath)),
        ),
      ]),
    );
  }
}

class ImageItems {
  final String appleWitdhBook =
      "assets/apple-and-book-png-transparent-apple-and-book-images-274565.png";
  final String appleBook = "assets/png/ic_apple_with_school.png";
  final String appleBookWithoutPath = "ic_apple_with_school";
}

class PngImage extends StatelessWidget {
  const PngImage({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
