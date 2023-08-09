import 'package:flutter/material.dart';

class HealthProgramme extends StatelessWidget {
  const HealthProgramme({super.key});

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
          padding:const EdgeInsets.fromLTRB(0.0, 16.0, 8.0, 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding:  EdgeInsets.fromLTRB(16.0,8.0,8.0,0.0),
                child:  Text(
                  'My Programmes',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child:Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color:const Color.fromARGB(66, 236, 90, 244),width: 5),
                          borderRadius:const BorderRadius.all(Radius.circular(8))),
                      child:const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0,16.0,0.0,4.0),
                            child: Text('COVID - 19',style: TextStyle(fontSize: 22 )),
                          ),
                          Text('Electronic Vaccination Record',style: TextStyle(fontSize: 18 )),
                          
                        ],
                      ),
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0,0.0,16.0,4.0),
                  child:Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color:Color.fromARGB(66, 112, 186, 236),width: 5),
                          borderRadius:const BorderRadius.all(Radius.circular(8))),
                      child:const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0,16.0,0.0,4.0),
                            child: Text('COVID - 19',style: TextStyle(fontSize: 22 )),
                          ),
                          Text('Electronic Testing Record',style: TextStyle(fontSize: 18 )),
                        ],
                      ),
                        ),
                )
            ],

          ),
        )
      ],
    );
  }
}
