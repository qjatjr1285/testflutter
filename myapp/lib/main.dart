import 'package:flutter/material.dart';

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
        '/': (context) => MyHomePage(title: '',),
        '/rental': (context) => Rental(),
        '/buy': (context) => Buy(),
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


  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Row 가운데 정렬
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Rental()),
                );
              }, child: const Text('대여')),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Buy()),
                );
              }, child: const Text('구매'))

          ],)
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index){
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/rental');
                break;
              case 1:
                Navigator.pushNamed(context, '/');
                break;
              case 2:
                Navigator.pushNamed(context, '/buy');
                break;
              case 3:
                Navigator.pushNamed(context, '/');
                break;
              case 4:
                Navigator.pushNamed(context, '/');
                break;
              default:
            }
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: '대여'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: '구매'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: '장바구니'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '내 정보'),
          ],
          )
    );
  }
}
