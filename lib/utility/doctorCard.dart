// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    Key? key,
    required this.imagePath,
    required this.rating,
    required this.name,
    required this.postAndExp,
  }) : super(key: key);
  final imagePath;
  final String rating;
  final String name;
  final String postAndExp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.purple[100],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                imagePath,
                height: 80,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                Text(rating),
              ],
            ),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5.0),
            Text(postAndExp),
          ],
        ),
      ),
    );
  }
}
