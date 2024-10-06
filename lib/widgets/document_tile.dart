import 'package:flutter/material.dart';

class DocumentTile extends StatelessWidget {
  final String documentName;
  final String category;

  DocumentTile({required this.documentName, required this.category});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.insert_drive_file),
      title: Text(documentName),
      subtitle: Text(category),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        // Navigate to document details or open document
      },
    );
  }
}
