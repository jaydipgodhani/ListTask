import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<IncrementListClass> incrementList = <IncrementListClass>[];
  int consecutiveTaps = 0;
  int lastTap = DateTime.now().millisecondsSinceEpoch;
  addDataIntoList() {
    for (var i = 0; i < 100; i++) {
      incrementList.add(IncrementListClass(count: 0));
    }
  }

  @override
  void initState() {
    super.initState();
    addDataIntoList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Item"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: incrementList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text("${incrementList[index].count}"),
                trailing: IconButton(
                    onPressed: () {
                      incrementList[index].count++;
                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Colors.green,
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}

class IncrementListClass {
  int count;
  IncrementListClass({required this.count});
}
