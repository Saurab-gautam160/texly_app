import 'package:flutter/material.dart';
import 'package:texly_app/bottom_sheets/sheet.dart';

class Ride extends StatefulWidget {
  const Ride({super.key});

  @override
  State<Ride> createState() => _RideState();
}

class _RideState extends State<Ride> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(
          child: Text('Functoinality can be added here'),
        ),
        body: Stack(
          children: [
            Image.asset(
              'assets/image1.webp',
              fit: BoxFit.fill,
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.5, // 50% of the screen height
              maxChildSize: 0.6, // 100% of the screen height
              minChildSize: 0.4,
              snapSizes: const [0.4, 0.5, 0.6],
              // 20% of the screen height
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: ListView(
                    controller: scrollController,
                    children: const [
                      MyWidget(),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
