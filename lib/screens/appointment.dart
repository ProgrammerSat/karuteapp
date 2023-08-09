import 'package:flutter/material.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});

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
                Tab(text: "Upcoming"),
                Tab(text: "Past"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Upcoming(),
              Past(),
            ],
          ),
        ),
      ),
    );
  }
}

class Upcoming extends StatelessWidget {
  const Upcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton(
              onPressed: () {},
              child: const Text('+ Add My Appointment Record')),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
          child: Card(
            child: SizedBox(
              width: double.infinity,
              height: 120,
              child: Center(child: Text("No Record")),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: Text(
              style: TextStyle(fontSize: 18),
              'Can\'t find your appointment record? '),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
          child: Row(
            children: [
              const Text(style: TextStyle(fontSize: 18), 'Please refer to our'),
              TextButton(onPressed: () {}, child: const Text('FAQ'))
            ],
          ),
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: Text(
                  style: TextStyle(fontSize: 18), 'Show cancelled appointment'),
            ),
          ],
        ),
      ],
    );
  }
}

class Past extends StatelessWidget {
  const Past({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            child: SizedBox(
              width: double.infinity,
              height: 120,
              child: Center(child: Text("No Record")),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: Text(
              style: TextStyle(fontSize: 18),
              'Can\'t find your appointment record? '),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32.0, 0.0, 16.0, 0.0),
          child: Row(
            children: [
              const Text(style: TextStyle(fontSize: 18), 'Please refer to our'),
              TextButton(onPressed: () {}, child: const Text('FAQ'))
            ],
          ),
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: Text(
                  style: TextStyle(fontSize: 18), 'Show cancelled appointment'),
            ),
          ],
        )
      ],
    );
  }
}
