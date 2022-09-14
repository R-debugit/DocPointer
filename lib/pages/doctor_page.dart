// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utility/doctorCard.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: const Text('Doctors'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              DoctorCard(
                imagePath: 'lib/doctor/doc2.jpg',
                rating: '4.8',
                name: 'Dr. Mahesh Bikram',
                postAndExp: 'Surgeon, 7 y.e',
              ),
              DoctorCard(
                imagePath: 'lib/doctor/doc3.jpg',
                rating: '4.6',
                name: 'Dr. Bhogendra Sah',
                postAndExp: 'Dentist, 5 y.e',
              ),
              DoctorCard(
                imagePath: 'lib/doctor/doc1.jpg',
                rating: '4.9',
                name: 'Dr. Sameer Mahato',
                postAndExp: 'Pharmacist, 10 y.e',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
