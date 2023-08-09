import 'package:flutter/material.dart';

enum Commtype { phone, email }

enum Langtype { english, japanese }

class ProfileConsent extends StatefulWidget {
  const ProfileConsent({super.key});

  @override
  State<ProfileConsent> createState() => _ProfileConsentState();
}

class _ProfileConsentState extends State<ProfileConsent> {
  Commtype selectedcomm = Commtype.phone;
  Langtype selectedlang = Langtype.english;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          height: 120,
          color: const Color.fromARGB(255, 131, 101, 184),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 25,
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 30,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(width: 10),
                Text("Kundu, Sourav", style: TextStyle(fontSize: 24))
              ],
            ),
          )),
      Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 180,
              height: 80,
              child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ))),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.handshake_rounded),
                      SizedBox(width: 8),
                      Text("Give Sharing\nConsent",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400))
                    ],
                  )),
            ),
            const VerticalDivider(
              width: 10,
              thickness: 1,
              // indent: 20,
              // endIndent: 0,
              // color: Colors.grey,
            ),
            SizedBox(
              width: 180,
              height: 80,
              child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ))),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.folder_shared_rounded),
                      SizedBox(width: 8),
                      Text("Sharing\nConsent Record",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400))
                    ],
                  )),
            ),
          ],
        ),
      ),
      Card(
          child: Container(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        width: double.infinity,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Profile",
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 28,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "eHR Number",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "23434545676",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Username",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "kundushk",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      )),
      Card(
          child: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        child: Form(
            key: _formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text("Communication Means"),
              const SizedBox(height: 10),
              SegmentedButton(
                segments: const <ButtonSegment<Commtype>>[
                  ButtonSegment<Commtype>(
                      value: Commtype.phone,
                      label: Text("SMS"),
                      icon: Icon(Icons.message, color: Colors.deepPurple)),
                  ButtonSegment<Commtype>(
                      value: Commtype.email,
                      label: Text("EMAIL"),
                      icon: Icon(Icons.email, color: Colors.deepPurple))
                ],
                selected: <Commtype>{selectedcomm},
                onSelectionChanged: (Set<Commtype> newSelection) {
                  setState(() {
                    selectedcomm = newSelection.first;
                  });
                },
              ),
              const SizedBox(height: 20),
              const Text("Communication Language"),
              const SizedBox(height: 10),
              SegmentedButton(
                segments: const <ButtonSegment<Langtype>>[
                  ButtonSegment<Langtype>(
                      value: Langtype.english,
                      label: Text("English"),
                      icon: Icon(Icons.language, color: Colors.deepPurple)),
                  ButtonSegment<Langtype>(
                      value: Langtype.japanese,
                      label: Text("日本"),
                      icon: Icon(Icons.language, color: Colors.deepPurple))
                ],
                selected: <Langtype>{selectedlang},
                onSelectionChanged: (Set<Langtype> newSelection) {
                  setState(() {
                    selectedlang = newSelection.first;
                  });
                },
              ),
              const Row(
                children: [
                  Icon(Icons.phone),
                  Text("Mobile Phone Number (for receiving SMS)")
                ],
              ),
            ])),
      ))
    ]);
  }
}
