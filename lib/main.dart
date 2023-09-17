import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.yellow,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber = 3;
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: (){
                setState(() {
                  rightDiceNumber = 2;
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
          ),
        ],
      ),
    );
  }
}

