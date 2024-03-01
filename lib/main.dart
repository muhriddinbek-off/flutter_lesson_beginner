import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade400,
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Column(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Expanded(child: box(Icons.edit_document, 'Document')),
                  Expanded(child: box(Icons.file_download_outlined, 'Download')),
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(child: box(Icons.network_check_sharp, 'Fast')),
                  Expanded(child: box(Icons.key_outlined, 'Key')),
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(child: box(Icons.location_on_outlined, 'Location')),
                  Expanded(child: box(Icons.mail_outline, 'Mail')),
                ],
              )),
            ],
          ),
        ));
  }

  Widget box(IconData icons, String title) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icons, size: 50),
          Text(
            title,
            style: const TextStyle(fontSize: 28),
          ),
        ],
      ),
    );
  }
}
