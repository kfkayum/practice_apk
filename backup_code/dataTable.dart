import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Data Table"),
          centerTitle: true,
        ),
        body: Center(
          child: DataTable(
            columns: const [
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Age")),
              DataColumn(label: Text("Roll")),
              DataColumn(label: Text("Class")),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Text('Kayum')),
                DataCell(Text('25')),
                DataCell(Text('20')),
                DataCell(Text('CSE')),
              ]),
              DataRow(cells: [
                DataCell(Text('Kayum')),
                DataCell(Text('25')),
                DataCell(Text('20')),
                DataCell(Text('CSE')),
              ]),
              DataRow(cells: [
                DataCell(Text('Kayum')),
                DataCell(Text('25')),
                DataCell(Text('20')),
                DataCell(Text('CSE')),
              ]),
              DataRow(cells: [
                DataCell(Text('Kayum')),
                DataCell(Text('25')),
                DataCell(Text('20')),
                DataCell(Text('CSE')),
              ]),
              DataRow(cells: [
                DataCell(Text('Kayum')),
                DataCell(Text('25')),
                DataCell(Text('20')),
                DataCell(Text('CSE')),
              ]),
              DataRow(cells: [
                DataCell(Text('Kayum')),
                DataCell(Text('25')),
                DataCell(Text('20')),
                DataCell(Text('CSE')),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
