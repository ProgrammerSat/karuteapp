import 'package:flutter/material.dart';

class HealthNews extends StatelessWidget {
  const HealthNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            ))
      ],
    );
  }
}
