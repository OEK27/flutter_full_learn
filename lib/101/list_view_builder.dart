import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.white,
            );
          },
          itemBuilder: (context, index) {
            return SizedBox(
                height: 400,
                child: Column(
                    children: [Expanded(child: Image.network("https://picsum.photos/200/300")), Text('$index')]));
          },
          itemCount: 15,
        ));
  }
}
