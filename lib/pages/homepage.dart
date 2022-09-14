// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:docpointer/pages/doctor_page.dart';
import 'package:docpointer/pages/form_page.dart';
import 'package:docpointer/utility/category_card.dart';
import 'package:docpointer/utility/doctorCard.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //app bar
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello,',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Rahul Jaiswal',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    //profile pic
                    Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple[100],
                      ),
                      child: Icon(Icons.person),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),
              //card how do you feel
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(children: [
                    //cute pic
                    Container(
                      height: 150,
                      width: 150,
                      child: Lottie.network(
                          'https://assets8.lottiefiles.com/packages/lf20_0fhlytwe.json'),
                    ),

                    SizedBox(
                      width: 20.0,
                    ),
                    //how do you feel + get Started Button
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you feel?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text('Fill out your medical card now'),
                          SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FormPage()),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              decoration: BoxDecoration(
                                //color: Colors.purple,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text('Get Started'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              ),

              SizedBox(height: 25),
              //search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'How can we help you?',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              //horizontal listview for categories like dentist,surgeon...
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryCard(
                      iconPath: 'lib/icon/tooth.png',
                      categoryName: 'Dentist',
                    ),
                    CategoryCard(
                      iconPath: 'lib/icon/doctor.png',
                      categoryName: 'Surgeon',
                    ),
                    CategoryCard(
                      iconPath: 'lib/icon/pills.png',
                      categoryName: 'Pharmacist',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Doctor',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    GestureDetector(
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500],
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DoctorPage()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),

              //doctor list
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
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
              SizedBox(height: 25.0),

              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
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
            ],
          ),
        ),
      ),
    );
  }
}
