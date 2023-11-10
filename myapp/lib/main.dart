import 'package:flutter/material.dart';
import 'package:myapp/menu_bottom.dart';

import 'rental.dart';
import 'buy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test title',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/rental': (context) => const Rental(),
        '/buy': (context) => const Buy(),
      },
      initialRoute: '/',
      home: const MyHomePage(title: 'Test title'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      bottomNavigationBar: MenuBottom(),
      body: Center(
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Row 가운데 정렬
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Rental()),
                );
              }, 
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 50)
              ), 
              child: const Text('대여'),
              ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Buy()),
                );
              }, child: const Text('구매'))

          ],)
        ),
    );
  }
}
