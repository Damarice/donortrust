import 'package:flutter/material.dart';

class DonorCommunicationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donor Communication'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Donor Communication',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thank You Message',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Dear Donors, we would like to express our heartfelt gratitude for your generous contributions. Your support has made a significant impact on our project and the lives of the beneficiaries. Thank you for being a part of our mission.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Impact Updates',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Quarterly Newsletter'),
                      subtitle: Text('Stay updated on our latest achievements and impact.'),
                      onTap: () {
                        // Logic to navigate to the newsletter page
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.library_books),
                      title: Text('Success Stories'),
                      subtitle: Text('Read inspiring stories of the beneficiaries.'),
                      onTap: () {
                        // Logic to navigate to the success stories page
                      },
                    ),
                    // Add more impact updates options
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Donor Recognition',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'We would like to recognize and acknowledge the following donors for their invaluable support:',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Icon(Icons.star),
                      title: Text('John Doe'),
                      subtitle: Text('Platinum Donor'),
                    ),
                    ListTile(
                      leading: Icon(Icons.star),
                      title: Text('Jane Smith'),
                      subtitle: Text('Gold Donor'),
                    ),
                    // Add more donor recognition entries
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DonorCommunicationPage(),
  ));
}
