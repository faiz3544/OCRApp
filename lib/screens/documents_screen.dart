import 'package:flutter/material.dart';
import 'package:finalyearproj/widgets/document_tile.dart';

class DocumentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffB81736), Color(0xff281537)],
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 60.0, left: 22),
              child: Text(
                'Your Documents',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Foreground content
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  DocumentTile(
                      documentName: 'Electricity Bill', category: 'Bills'),
                  DocumentTile(
                      documentName: 'Water Bill', category: 'Bills'),
                  DocumentTile(
                      documentName: 'Insurance Document', category: 'Insurance'),
                  // Add more documents here
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
