import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'home_page.dart'; // Import the home page file

class OnboardingScreen extends StatelessWidget {
  final String email = 'example@example.com'; // Change this to the desired email address

  void sendEmail() async {
    final String username = 'your-email@example.com';
    final String password = 'your-email-password';
    final String recipientEmail = email;

    final smtpServer = SmtpServer('smtp.example.com',
        username: username,
        password: password,
        port: 587); // Update with your SMTP server details

    final message = Message()
      ..from = Address(username)
      ..recipients.add(recipientEmail)
      ..subject = 'Apply for Vetting'
      ..text = 'I am applying for vetting.';

    try {
      // ignore: unused_local_variable
      final sendReport = await send(message, smtpServer);
    } catch (e) {
    }
  }

  void saveToDatabase() {
    final firestore = FirebaseFirestore.instance;
    final collectionRef = firestore.collection('your-collection');

    // Example data to save to the database
    final data = {
      'name': 'John Doe',
      'age': 30,
      'email': 'johndoe@example.com',
    };

    collectionRef.add(data)
        .then((value) => print('Data saved to the database successfully'))
        .catchError((error) => print('Error occurred while saving data: $error'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to the Donor Trust App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'App introduction and features description go here',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the home page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text('Get Started'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Send email for vetting
                  sendEmail();
                },
                child: Text('Apply for Vetting'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Save data to the database
                  saveToDatabase();
                },
                child: Text('Book'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
