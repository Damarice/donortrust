import 'package:flutter/material.dart';

class TransparencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Financial Transparency'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Replace with your own design elements
            Text(
              'Financial Transparency',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Replace with your own design elements
            DataTable(
              columns: [
                DataColumn(label: Text('Category')),
                DataColumn(label: Text('Amount')),
                DataColumn(label: Text('Date')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Expenditures')),
                  DataCell(Text('\$10,000')),
                  DataCell(Text('2023-06-01')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Revenues')),
                  DataCell(Text('\$20,000')),
                  DataCell(Text('2023-06-02')),
                ]),
                // Add more rows for other financial aspects
              ],
            ),
            SizedBox(height: 20),
            // Replace with your own design elements
            ElevatedButton(
              onPressed: () {
                // Logic to download the entire project's financial data
              },
              child: Text('Download Project Data'),
            ),
            SizedBox(height: 20),
            // Replace with your own design elements
            Text(
              'Audits and Reports',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Replace with your own design elements
            ListTile(
              leading: Icon(Icons.picture_as_pdf),
              title: Text('Summary Audit Report'),
              trailing: IconButton(
                icon: Icon(Icons.download),
                onPressed: () {
                  // Logic to download the summary audit report
                },
              ),
            ),
            // Replace with your own design elements
            ListTile(
              leading: Icon(Icons.attach_file),
              title: Text('Financial Statements'),
              trailing: IconButton(
                icon: Icon(Icons.download),
                onPressed: () {
                  // Logic to download the financial statements
                },
              ),
            ),
            // Add more options for other audit and report documents
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TransparencyPage(),
  ));
}
