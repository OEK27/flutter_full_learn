import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

import 'custom_exception.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);

  void toShare(path) async {
    await launchUrl(path);
  }
}

class FileDownload extends IFileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();
    return true;
  }
}

// class SMSDownload implements IFileDownload {
//   @override
//   bool? downloadItem(FileItem? fileItem) {
//     if (fileItem == null) throw FileDownloadException();
//     return null;
//   }

//   @override
//   Future<void> toShare(String path) async {
//     await launchUrl("sms:$path");
//   }
// }

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

class VeliDownload extends IFileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    return null;
  }
}

mixin ShareMixin on IFileDownload {
  void toShowFile() {}
}
