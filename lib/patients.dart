// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PatientsWidget extends StatefulWidget {
  const PatientsWidget({super.key});

  @override
  State<PatientsWidget> createState() => _PatientsWidgetState();
}

class _PatientsWidgetState extends State<PatientsWidget> {
  List<Map<String, dynamic>> persons = [
    {'name': 'Joyce Chijioke', 'Illness': 'Malaria', 'blood-group': 'O+'},
    {'name': 'Ogechi Anaocha', 'Illness': 'HIV', 'blood-group': 'O-'},
    {'name': 'Charles Cabbage', 'Illness': 'Dimentia', 'blood-group': 'A+'},
    {'name': 'Joyce Chijioke', 'Illness': 'Malaria', 'blood-group': 'O+'},
    {'name': 'Ogechi Anaocha', 'Illness': 'HIV', 'blood-group': 'O-'},
    {'name': 'Charles Cabbage', 'Illness': 'Dimentia', 'blood-group': 'A+'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffeeeeee),
        appBar: AppBar(
          title: Text(
            'My Patients',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xffeeeeee),
          elevation: 0,
        ),
        body: Center(
          child: ListView.builder(
              itemCount: persons.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(persons[index]['name'],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        Column(
                          children: [
                            Text('Illness: ${persons[index]['Illness']}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 17)),
                            Text(
                                'Blood Group:  ${persons[index]['blood-group']}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 17))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
