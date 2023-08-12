import 'package:flutter/material.dart';

final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    var list = <Widget>[];
    for (var i = 0; i <= 100; i++) {
      list.add(ListItemWidget(
        key: UniqueKey(),
      ));
    }
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => list[index]);
  }
}

class ListItemWidget extends StatefulWidget {
  const ListItemWidget({super.key});
  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget>
    with AutomaticKeepAliveClientMixin {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Text(count.toString()),
            MaterialButton(
              onPressed: () {
                setState(() {
                  count++;
                  _listKey.currentState?.insertItem(count - 1);
                });
              },
              child: const Text("+"),
            )
          ],
        ));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
