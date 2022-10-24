
// class FeedView extends StatefulWidget {
  // const FeedView({Key? key}) : super(key: key);

  // @override
  // State<FeedView> createState() => _FeedViewState();
// }

/*class _FeedViewState extends State<FeedView> {
  final IPostService _postService = PostService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<PostModel>?>(
          // future: _postService.fetchRelatedCommentWithPostId(),
          builder: (BuildContext context, AsyncSnapshot<List<PostModel>?> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Placeholder();
              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());

              case ConnectionState.active:
                return const Center(child: CircularProgressIndicator());

              case ConnectionState.done:
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      // return Card(child: ListTile(title: snapshot.data?[index].body ?? ''));
                    },
                  );
                } else {
                  return const Placeholder();
                }
            }
          }),
    );
  }
}
*/