import 'package:flutter/material.dart';

class ListLearn extends StatefulWidget {
  const ListLearn({Key? key}) : super(key: key);

  @override
  State<ListLearn> createState() => _ListLearnState();
}

class _ListLearnState extends State<ListLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            child: Text(
              'merhaba',
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.green,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                )
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
          FittedBox(
            child: Text(
              'merhaba',
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.green,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                )
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
          const _ListDemo()
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({Key? key}) : super(key: key);

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
