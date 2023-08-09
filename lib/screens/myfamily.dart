import 'package:flutter/material.dart';

class MyFamily extends StatelessWidget {
  const MyFamily({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            primary: false,
            toolbarHeight: 0,
            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(text: "My Family Members"),
                Tab(text: "My Caregivers"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Family(),
              Caregivers(),
            ],
          ),
        ),
      ),
    );
  }
}

class Family extends StatelessWidget {
  const Family({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(style: TextStyle(fontSize: 18), 'My Family'),
              TextButton(onPressed: () {}, child: const Text("Edit"))
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            iconSize: 40,
          ),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("How to add family members ?")),
          const Text(
            "Pending confirmation",
            style: TextStyle(fontSize: 18),
          ),
          const Card(
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: Center(child: Text("No Record")),
            ),
          )
        ]));
  }
}

class Caregivers extends StatelessWidget {
  const Caregivers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(style: TextStyle(fontSize: 22), 'Pending Confirmation'),
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 8.0, 4.0, 0.0),
            child: Text(
                style: TextStyle(fontSize: 14),
                'If you accept the caregiver request(s) below, the caregiver(s) can review your eHR via AKSJ eHealth App.'),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
            child: Text('More Information about the Caregiver'),
          ),
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: const Text(style: TextStyle(fontSize: 18), 'No Records')),
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 8.0),
            child: Text(style: TextStyle(fontSize: 22), 'My Caregivers'),
          ),
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: const Text(style: TextStyle(fontSize: 18), 'No Records')),
        ],
      ),
    );
  }
}
