// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:karuteapp/screens/allergy.dart';
import 'package:karuteapp/screens/appointment.dart';
import 'package:karuteapp/screens/childgrowth.dart';
import 'package:karuteapp/screens/consent.dart';
import 'package:karuteapp/screens/doctorsearch.dart';
import 'package:karuteapp/screens/healthmanage.dart';
import 'package:karuteapp/screens/healthnews.dart';
import 'package:karuteapp/screens/healthprogramme.dart';
import 'package:karuteapp/screens/home.dart';
import 'package:karuteapp/screens/informationcenter.dart';
import 'package:karuteapp/screens/medications.dart';
import 'package:karuteapp/screens/myfamily.dart';
import 'package:karuteapp/screens/vaccines.dart';

class DrawerMenu {
  DrawerMenu(this.label, this.icon, this.selectedIcon, {this.screen});

  final String label;
  final Widget icon;
  final Widget selectedIcon;
  Widget? screen;
}

List<DrawerMenu> destinations = <DrawerMenu>[
  DrawerMenu(
      'Homepage',
      const Icon(Icons.home_outlined, color: Colors.deepPurple),
      const Icon(Icons.home, color: Colors.deepPurple),
      screen: const Home()),
  DrawerMenu(
      'Profile & Sharing Consent',
      const Icon(Icons.account_circle_outlined, color: Colors.deepPurple),
      const Icon(Icons.account_circle, color: Colors.deepPurple),
      screen: const ProfileConsent()),
  DrawerMenu('My Family', const Icon(Icons.group, color: Colors.deepPurple),
      const Icon(Icons.group, color: Colors.deepPurple),
      screen: const MyFamily()),
  DrawerMenu(
      'Allergy',
      const Icon(Icons.warning_amber_outlined, color: Colors.deepPurple),
      const Icon(Icons.warning_amber, color: Colors.deepPurple),
      screen: const Allergy()),
  DrawerMenu(
      'Medications',
      const Icon(Icons.medication, color: Colors.deepPurple),
      const Icon(Icons.medication, color: Colors.deepPurple),
      screen: const Medications()),
  DrawerMenu(
      'Vaccines',
      const Icon(Icons.vaccines_outlined, color: Colors.deepPurple),
      const Icon(Icons.vaccines, color: Colors.deepPurple),
      screen: const Vaccines()),
  DrawerMenu(
      'Appointments',
      const Icon(Icons.schedule_outlined, color: Colors.deepPurple),
      const Icon(Icons.schedule, color: Colors.deepPurple),
      screen: const Appointment()),
  DrawerMenu(
      'Health Management',
      const Icon(
        Icons.health_and_safety_outlined,
        color: Colors.deepPurple,
      ),
      const Icon(Icons.health_and_safety, color: Colors.deepPurple),
      screen: const HealthManagement()),
  DrawerMenu(
      'Health Programme',
      const Icon(
        Icons.healing_outlined,
        color: Colors.deepPurple,
      ),
      const Icon(Icons.healing, color: Colors.deepPurple),
      screen: const HealthProgramme()),
  DrawerMenu(
      'Child Growth Record',
      const Icon(Icons.child_care_outlined, color: Colors.deepPurple),
      const Icon(Icons.child_care, color: Colors.deepPurple),
      screen: const ChildGrowth()),
  DrawerMenu('Doctor Search', 
      const Icon(Icons.person_search_outlined,color: Colors.deepPurple),
      const Icon(Icons.person_search,color: Colors.deepPurple),
      screen: const DoctorSearch()),
  DrawerMenu(
      'Health News', 
      const Icon(Icons.campaign_outlined,color: Colors.deepPurple),
      const Icon(Icons.campaign,color: Colors.deepPurple),
      screen:const HealthNews()),
  DrawerMenu('Settings', Icon(Icons.settings_outlined), Icon(Icons.settings)),
  DrawerMenu('Language', Icon(Icons.language_outlined), Icon(Icons.language)),
  DrawerMenu(
      'Smart Tips', Icon(Icons.lightbulb_outline), Icon(Icons.lightbulb)),
  DrawerMenu(
    'Information Center',
    const Icon(Icons.info_outline, color: Colors.deepPurple,),
    const Icon(Icons.info, color: Colors.deepPurple),
    screen: const InformationCenter()),
  DrawerMenu('Tutorials', Icon(Icons.school_outlined), Icon(Icons.school)),
  DrawerMenu('FAQs', Icon(Icons.quiz_outlined), Icon(Icons.quiz)),
  DrawerMenu('Contact Us', Icon(Icons.contact_phone_outlined),
      Icon(Icons.contact_phone)),
  DrawerMenu('Terms of use', Icon(Icons.report_problem_outlined),
      Icon(Icons.report_problem)),
  DrawerMenu('Logout', Icon(Icons.logout_outlined), Icon(Icons.logout)),
];

// List<DrawerMenu> options = <DrawerMenu>[

// ];

void main() {
  runApp(const KaruteApp());
}

class KaruteApp extends StatelessWidget {
  const KaruteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Karute Healthcare',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const KaruteHomePage(title: 'Karute Healthcare'),
    );
  }
}

class KaruteHomePage extends StatefulWidget {
  const KaruteHomePage({super.key, required this.title});
  final String title;

  @override
  State<KaruteHomePage> createState() => _KaruteHomePageState();
}

class _KaruteHomePageState extends State<KaruteHomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int screenIndex = 0;

  void handleIndexChanged(int index) {
    setState(() {
      screenIndex = index;
      Navigator.pop(context);
    });
  }

  void open() {
    scaffoldKey.currentState!.openDrawer();
  }

  Widget navigationDrawerScaffold() {
    return NavigationDrawer(
      indicatorShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      onDestinationSelected: handleIndexChanged,
      selectedIndex: screenIndex,
      children: <Widget>[
        Container(
            height: 120,
            color: const Color.fromARGB(255, 131, 101, 184),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 25,
                    child: Icon(
                      Icons.account_circle_outlined,
                      size: 30,
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("Kundu, Sourav", style: TextStyle(fontSize: 24))
                ],
              ),
            )),
        const Divider(),
        // ...destinations.map(
        //   (DrawerMenu destination) {
        //     return NavigationDrawerDestination(
        //       label: Text(destination.label),
        //       icon: destination.icon,
        //       selectedIcon: destination.selectedIcon,
        //     );
        //   },
        // ),
        for (int i = 0; i < 12; i++)
          NavigationDrawerDestination(
            label: Text(destinations[i].label),
            icon: destinations[i].icon,
            selectedIcon: destinations[i].selectedIcon,
          ),
        const Divider(),
        for (int i = 12; i < destinations.length; i++)
          NavigationDrawerDestination(
            label: Text(destinations[i].label),
            icon: destinations[i].icon,
            selectedIcon: destinations[i].selectedIcon,
          ),
        // ...options.map(
        //   (DrawerMenu destination) {
        //     return NavigationDrawerDestination(
        //       label: Text(destination.label),
        //       icon: destination.icon,
        //       selectedIcon: destination.selectedIcon,
        //     );
        //   },
        // ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: navigationDrawerScaffold(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // title: Text(destinations[screenIndex].label, style: TextStyle(color: Colors.white)),
          title: Text(destinations[screenIndex].label),
          shadowColor: Colors.black54,
          elevation: 10,
          centerTitle: true,
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: open),
        ),
        body: destinations[screenIndex].screen);
  }
}
