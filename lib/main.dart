import 'package:flutter/material.dart';

void main() {
  runApp(const PracticeApp());
}

class PracticeApp extends StatelessWidget {
  const PracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "First Page",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Text(
          "$count",
          style: TextStyle(fontSize: 35, color: Colors.blueAccent),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){setState(() {
        count = count+1;
      });},
      child:
        const Icon(Icons.plus_one),),
    );
  }
}
