import 'package:flutter/material.dart';

class Rental extends StatefulWidget {
  const Rental({super.key});

  @override
  State<Rental> createState() => _RentalState();
}

class _RentalState extends State<Rental> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('대여'),
      ),
      
    );
  }
}