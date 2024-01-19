import 'package:flutter/material.dart';

class loginForm extends StatelessWidget {
  const loginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            initialValue: 'Your Email',
            decoration: InputDecoration(
              labelText: 'Email',
              //errorText: 'Error message',
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.mail,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
