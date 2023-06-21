import 'package:flutter/material.dart';
import 'project_details_page.dart'; // Import the project details page file

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donor Trust'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ongoing Projects',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              ProjectCard(
                title: 'Al Badru',
                description: 'Al Badru project description goes here',
              ),
              SizedBox(height: 10),
              ProjectCard(
                title: 'Project 2',
                description: 'Project 2 description goes here',
              ),
              SizedBox(height: 20),
              Text(
                'Finished Projects',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              ProjectCard(
                title: 'Project 3',
                description: 'Project 3 description goes here',
              ),
              SizedBox(height: 10),
              ProjectCard(
                title: 'Project 4',
                description: 'Project 4 description goes here',
              ),
              SizedBox(height: 20),
              Text(
                'Started Projects',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              ProjectCard(
                title: 'Project 5',
                description: 'Project 5 description goes here',
              ),
              SizedBox(height: 10),
              ProjectCard(
                title: 'Project 6',
                description: 'Project 6 description goes here',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;

  const ProjectCard({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProjectDetailsPage(title: title, description: description)),
          );
        },
      ),
    );
  }
}
