import 'package:flutter/material.dart';

class InformationCenter extends StatelessWidget {
  const InformationCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            primary: false,
            toolbarHeight: 0,
            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(text: """   eHealth 
Notification"""),
                Tab(text: """Health Tips"""),
                Tab(
                  text: """  Health 
Reminder""",
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [EHealthNotifications(), HealthTips(), HealthReminder()],
          ),
        ),
      ),
    );
  }
}

class EHealthNotifications extends StatelessWidget {
  const EHealthNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
            padding: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Search ',
              ),
            )),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
              child: TextButton(
                  onPressed: () => {},
                  child: const Text('Notification  |',
                      style: TextStyle(fontSize: 16))),
            ),
            const Text(
              'Access',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: const Text(style: TextStyle(fontSize: 18), 'No Records')),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0.0),
          child: Text(
            'Only Records in the last 45 days are shown',
            style: TextStyle(color: Color.fromARGB(255, 124, 124, 124)),
          ),
        ),
        const Divider(
          color: Colors.black,
          height: 25,
          thickness: 0.4,
          indent: 25,
          endIndent: 25,
        ),
        const Text('Last Update: 30-Mar-2023 6:04 PM',
            style: TextStyle(color: Color.fromARGB(255, 124, 124, 124)))
      ],
    );
  }
}

class HealthTips extends StatelessWidget {
  const HealthTips({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HealthReminder extends StatelessWidget {
  const HealthReminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
            padding: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Search ',
              ),
            )),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: const Text(style: TextStyle(fontSize: 18), 'No Records')),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0.0),
          child: Text(
            'Only Records in the last 90 days are shown',
            style: TextStyle(color: Color.fromARGB(255, 124, 124, 124)),
          ),
        ),
        const Divider(
          color: Colors.black,
          height: 25,
          thickness: 0.4,
          indent: 25,
          endIndent: 25,
        ),
        const Text('Last Update: 30-Mar-2023 6:04 PM',
            style: TextStyle(color: Color.fromARGB(255, 124, 124, 124)))
      ],
    );
  }
}
