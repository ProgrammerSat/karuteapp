import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width:150,
                height:60,
                child:
                  FilledButton.tonal(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(EdgeInsets.all(8)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )
                      )
                    ),
                    child: const Row(
                      children:  [
                        Icon(Icons.medication, color:Colors.teal),
                        SizedBox(width:4),
                        Text("Medications"),
                      ],
                    ),
                  )
              ),
              const SizedBox(width:10),
              SizedBox(
                width:150,
                height:60,
                child:
                  FilledButton.tonal(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(8)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )
                      )
                    ),
                    child: const Row(
                      children:  [
                        Icon(Icons.health_and_safety, color:Colors.teal),
                        SizedBox(width:4),
                        Text("Health\nManagement", softWrap: true, maxLines: 2,),
                      ],
                    ),
                  )
              )
            ],
          ),
          const SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width:150,
                height:60,
                child:
                  FilledButton.tonal(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(8)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )
                      )
                    ),
                    child: const Row(
                      children:  [
                        Icon(Icons.medication, color:Colors.teal),
                        SizedBox(width:4),
                        Text("Appointments"),
                      ],
                    ),
                  )
              ),
              const SizedBox(width:10),
              SizedBox(
                width:150,
                height:60,
                child:
                  FilledButton.tonal(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(8)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )
                      )
                    ),
                    child: const Row(
                      children:  [
                        Icon(Icons.vaccines, color:Colors.teal),
                        SizedBox(width:4),
                        Text("Vaccines", softWrap: true, maxLines: 2,),
                      ],
                    ),
                  )
              )
            ],
          ),
          const SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width:150,
                height:60,
                child:
                  FilledButton.tonal(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(EdgeInsets.all(8)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )
                      )
                    ),
                    child: const Row(
                      children:  [
                        Icon(Icons.warning_amber, color:Colors.teal),
                        SizedBox(width:4),
                        Text("Allergy"),
                      ],
                    ),
                  )
              ),
              const SizedBox(width:10),
              SizedBox(
                width:150,
                height:60,
                child:
                  FilledButton.tonal(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(EdgeInsets.all(8)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )
                      )
                    ),
                    child: const Row(
                      children:  [
                        Icon(Icons.group, color:Colors.teal),
                        SizedBox(width:4),
                        Text("My Family", softWrap: true, maxLines: 2,),
                      ],
                    ),
                  )
              )
            ],
          ),
          const SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width:150,
                height:60,
                child:
                  FilledButton.tonal(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(EdgeInsets.all(8)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )
                      )
                    ),
                    child: const Row(
                      children:  [
                        Icon(Icons.person_search, color:Colors.teal),
                        SizedBox(width:4),
                        Text("Doctor Search"),
                      ],
                    ),
                  )
              ),
              const SizedBox(width:10),
              SizedBox(
                width:150,
                height:60,
                child:
                  FilledButton.tonal(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(EdgeInsets.all(8)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )
                      )
                    ),
                    child: const Row(
                      children:  [
                        Icon(Icons.healing, color:Colors.teal),
                        SizedBox(width:4),
                        Text("Health\nProgramme", softWrap: true, maxLines: 2,),
                      ],
                    ),
                  )
              )
            ],
          ),
          const SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width:150,
                height:60,
                child:
                  FilledButton.tonal(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(EdgeInsets.all(8)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )
                      )
                    ),
                    child: const Row(
                      children:  [
                        Icon(Icons.child_care, color:Colors.teal),
                        SizedBox(width:4),
                        Text("Child Growth\nRecord"),
                      ],
                    ),
                  )
              ),
              const SizedBox(width:10),
              SizedBox(
                width:150,
                height:60,
                child:
                  FilledButton.tonal(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(EdgeInsets.all(8)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )
                      )
                    ),
                    child: const Row(
                      children:  [
                        Icon(Icons.campaign, color:Colors.teal),
                        SizedBox(width:4),
                        Text("Health News", softWrap: true, maxLines: 2,),
                      ],
                    ),
                  )
              )
            ],
          ),
        ],
      ),
    );
  }
}