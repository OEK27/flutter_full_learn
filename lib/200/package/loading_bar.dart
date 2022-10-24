import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({Key? key, this.size}) : super(key: key);
  final double? size;
  // ignore: unused_field
  final double _defaultSize = 40.0;

  @override
  Widget build(BuildContext context) {
    return const SpinKitPianoWave(
      color: Colors.red,
      // size: size ?? _defaultSize,
    );
  }
}
