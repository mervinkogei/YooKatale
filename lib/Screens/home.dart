import 'package:flutter/material.dart';
import 'package:yookatale/components/grid_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final data = ["1", "2"];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: data.length,
      padding: EdgeInsets.symmetric(vertical: 30),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 30, crossAxisSpacing: 30),
     itemBuilder: (context, index){
      return GridCard(index: 0, onPressed: (){});
     });
  }
}