import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 200, minWidth: 100, minHeight: 20, maxHeight: 120),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
            child: Text('aa' * 1, maxLines: 2),
          ),
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
    boxShadow: const [
      BoxShadow(
        color: Colors.green,
        offset: Offset(0.1, 1),
        blurRadius: 12,
      )
    ],
    // shape: BoxShape.circle,
    border: Border.all(width: 10, color: Colors.white12),
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  @override
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            boxShadow: const [
              BoxShadow(
                color: Colors.green,
                offset: Offset(0.1, 1),
                blurRadius: 12,
              )
            ],
            border: Border.all(width: 10, color: Colors.white12));
}
