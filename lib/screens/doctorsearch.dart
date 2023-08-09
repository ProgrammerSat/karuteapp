import 'package:flutter/material.dart';

class DoctorSearch extends StatelessWidget {
  const DoctorSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Container(
          height: 60,
          color: const Color.fromARGB(255, 131, 101, 184),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 20,
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 30,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(width: 10),
                Text("Hello KUNDU, SOURAV",
                    style: TextStyle(fontSize: 24, color: Colors.white))
              ],
            ),
          )),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.saved_search),
              iconSize: 30,
              color: const Color.fromARGB(255, 110, 51, 211),
            ),
          )
        ],
      ),
      const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 6.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'District'),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 6.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Healthcare Professional/Healthcare Provider'),
            ),
          )
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16.0, 10.0, 0.0, 6.0),
            child: Text('Popular Health Programmes',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(12.0, 10.0, 0.0, 6.0),
                child: Icon(Icons.elderly_woman_rounded, size: 25),
              ),
              TextButton(
                  onPressed: () => {},
                  child: const Text(
                    'Elderly Healthcare Voucher Scheme',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ))
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(12.0, 10.0, 0.0, 6.0),
                child: Icon(Icons.monitor_heart_rounded, size: 25),
              ),
              TextButton(
                  onPressed: () => {},
                  child: const Text(
                    """General Outpatient Clinic Public-Private
Partnership Programme""",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16),
                  ))
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(12.0, 10.0, 0.0, 6.0),
                child: Icon(Icons.medication_liquid_rounded, size: 25),
              ),
              TextButton(
                  onPressed: () => {},
                  child: const Text(
                    """Chinese Medicine Clinics cum Training 
and Research Centres""",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16),
                  ))
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(12.0, 10.0, 0.0, 6.0),
                child: Icon(Icons.health_and_safety_rounded, size: 25),
              ),
              TextButton(
                  onPressed: () => {},
                  child: const Text(
                    'District Health Centre',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ))
            ],
          )
        ],
      ),
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16.0, 10.0, 0.0, 6.0),
            child: Text('Useful Links',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(12.0, 10.0, 0.0, 6.0),
                child: Icon(Icons.health_and_safety_rounded, size: 25),
              ),
              TextButton(
                  onPressed: () => {},
                  child: const Text(
                    'District Health Centre',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
              ))
            ],
          ),
          
        ],
      )
    ]);
  }
}
