import 'package:flutter/material.dart';
import 'package:texly_app/screens/home_screen.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                height: 20,
                width: 20,
              ),
              SizedBox(
                height: 90,
                width: 110,
                child: Card(
                  elevation: 12,
                  child: Image.asset(
                    'assets/icon1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                height: 90,
                width: 110,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 12,
                    child: Image.asset('assets/icon2.jpg'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.circle,
                size: 30,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: const TextField(
                    decoration: InputDecoration(
                      label: Text(
                        'Pickup location',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.circle,
                size: 30,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: const TextField(
                    decoration: InputDecoration(
                      label: Text(
                        'Destination',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.money,
                size: 30,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: const TextField(
                    decoration: InputDecoration(
                      label: Text(
                        'Money you fare',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.comment,
                size: 30,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: const TextField(
                    decoration: InputDecoration(
                      label: Text(
                        'Options and Comments',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
              ),
              onPressed: () {},
              child: const Text(
                'Find a Driver',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
