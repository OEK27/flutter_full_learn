// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/200/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8();
  @override
  void initState() {
    super.initState();

    final user1 = PostModel1();
    user1.body = 'hello';

    final user2 = PostModel2(1, 2, 'a', 'b');
    user2.body = 'a';

    final user3 = PostModel3(1, 2, 'a', 'b');
    // user3.body = 'a';

    // local
    final user4 = PostModel4(body: 'b', id: 1, title: '', userId: 2);

    final user5 = PostModel5(userId: 1, id: 2, title: 'title', body: 'body');
    user5.userId;

    final user6 = PostModel6(userId: 1, id: 2, title: 'a', body: 'b');

    final user7 = PostModel7();

    // service
    final user8 = PostModel8(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'On Pressed');
            user9.updateBody(null);
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.body ?? 'Not have a any data'),
      ),
    );
  }
}
