import 'package:flutter/material.dart';

class MobxImageUpload extends StatefulWidget {
  const MobxImageUpload({Key? key}) : super(key: key);

  @override
  State<MobxImageUpload> createState() => _MobxImageUploadState();
}

class _MobxImageUploadState extends State<MobxImageUpload> {
  final String _imageUploadLottiePath = 'https://assets7.lottiefiles.com/packages/lf20_urbk83vw.json';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Upload'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Card(
                elevation: 10,
                child: FittedBox(
                    child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.upload_file),
                ))),
          ),
          const Divider(),
          const Spacer(
            flex: 4,
          )
        ],
      ),
    );
  }
}
