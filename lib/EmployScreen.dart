import 'package:flutter/material.dart';

class EmployeScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Employee",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Name"),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: "Age"),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: "Salary"),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                     if (_formKey.currentState!.validate()) {}
                  },
                  child: Text(
                    "Add Employee",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
