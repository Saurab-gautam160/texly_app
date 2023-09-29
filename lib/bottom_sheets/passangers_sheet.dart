import 'package:flutter/material.dart';

class Passengersheet extends StatefulWidget {
  const Passengersheet({super.key});

  @override
  State<Passengersheet> createState() => _PassengersheetState();
}

class _PassengersheetState extends State<Passengersheet> {
  int _value = 0;

  void _incrementValue() {
    setState(() {
      _value++;
    });
  }

  void _decrementValue() {
    setState(() {
      if (_value > 0) {
        _value--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: _decrementValue,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Text(
                '$_value',
                style: const TextStyle(fontSize: 24.0),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: _incrementValue,
            ),
          ],
        ),
        ElevatedButton(onPressed: () {}, child: Text('total '))
      ],
    );
  }
}
