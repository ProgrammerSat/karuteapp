import 'package:flutter/material.dart';

class Vaccines extends StatelessWidget {
  const Vaccines({super.key});

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
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                      style: TextStyle(fontSize: 12),
                      '+ Add My Vaccine Record'
                  )
              ),
              SizedBox(
                child: Row(
                  children: [
                      IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code_scanner)),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.tune)),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
      
    );
  }
}
