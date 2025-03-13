import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 24, 40, 79)),
      ),
      home: const MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final List<String> cardTexts = [
    'Singaraja',
    'All Genres',
    'Baktiseraga',
    'Undiksha'
  ];

  final List<IconData> cardIcons = [
    Icons.location_city,
    Icons.music_note,
    Icons.home,
    Icons.school,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title)),
      ),
      body: Container(
        color: const Color.fromARGB(255, 237, 241, 255),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            const SizedBox(height: 15),
            const Text(
              'Dewa Made Satya Pratama Putra',
              style: TextStyle(fontSize: 28, color: Color.fromARGB(255, 11, 11, 11)),
            ),
            const Text(
              'https://www.linkedin.com/in/dewa-satya-65b698333/',
              style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 0, 102, 255)),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(2, (rowIndex) {
                return Column(
                  children: List.generate(2, (colIndex) {
                    int index = rowIndex * 2 + colIndex;
                    return Container(
                      margin: const EdgeInsets.all(10),
                      width: 200,
                      height: 120,
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              cardIcons[index],
                              size: 40,
                              color: Colors.blueGrey,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              cardTexts[index],
                              style: const TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
