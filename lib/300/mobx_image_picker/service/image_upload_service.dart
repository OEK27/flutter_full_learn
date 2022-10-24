import 'dart:typed_data';

import 'package:dio/dio.dart';

class ImageUploadService {
  final Dio dio;
  //https://firebasestorage.googleapis.com/v0/b/{{fluttertr-ead5c.appspot.com}/o/full%2Fvb.png
  ImageUploadService(this.dio);

  Future<void> uploadToImageSerer(Uint8List byteArray, String name) async {
    dio.post(
      'full%2F$name.vb.png',
      data: byteArray,
      onSendProgress: (int sent, int total) {},
    );
  }
}
