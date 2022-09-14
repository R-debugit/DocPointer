// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  late String _name;
  late String _email;
  late String _age;
  late String _contact;
  late String _bloodGroup;
  late String _allergies;
  final _items = ['A+', 'B+', 'O+', 'A-', 'B-', 'O-', 'AB+'];
  String? _selectedBlood = 'B+';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildNameField() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.person),
        labelText: 'Name*',
        border: OutlineInputBorder(),
      ),
      onSaved: (String? value) {
        _name = value!;
      },
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is required';
        }
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.mail),
        labelText: 'E-mail*',
        border: OutlineInputBorder(),
      ),
      onSaved: (String? value) {
        _email = value!;
      },
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Required';
        }
      },
    );
  }

  Widget _buildAge() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.date_range),
        labelText: 'Age*',
        border: OutlineInputBorder(),
      ),
      onSaved: (String? value) {
        _age = value!;
      },
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Required';
        }
      },
    );
  }

  Widget _buildContact() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        icon: Icon(Icons.phone),
        labelText: 'Contact*',
      ),
      onSaved: (String? value) {
        _contact = value!;
      },
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Required';
        }
      },
    );
  }

  Widget _buildBloodGroup() {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.bloodtype),
        labelText: 'Blood Group*',
        border: OutlineInputBorder(),
      ),
      value: _selectedBlood,
      items: _items.map((e) {
        return DropdownMenuItem(
          child: Text(e),
          value: e,
        );
      }).toList(),
      onChanged: (val) {
        setState(() {
          _selectedBlood = val as String;
        });
      },
      icon: const Icon(
        Icons.arrow_drop_down_circle,
        color: Colors.deepPurple,
      ),
      onSaved: (String? value) {
        _bloodGroup = value!;
      },
    );
  }

  Widget _buildAllergies() {
    return TextFormField(
        decoration: InputDecoration(
          icon: Icon(Icons.bug_report),
          labelText: 'Allergies*',
          border: OutlineInputBorder(),
        ),
        onSaved: (String? value) {
          _allergies = value!;
        },
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'Write NA if none';
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Text('Enter Your Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  _buildNameField(),
                  SizedBox(height: 18),
                  _buildEmail(),
                  SizedBox(height: 18),
                  _buildAge(),
                  SizedBox(height: 18),
                  _buildContact(),
                  SizedBox(height: 18),
                  _buildBloodGroup(),
                  SizedBox(height: 18),
                  _buildAllergies(),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      _formKey.currentState!.save();
                      print(_name);
                      print(_email);
                      print(_age);
                      print(_contact);
                      print(_bloodGroup);
                      print(_allergies);
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
