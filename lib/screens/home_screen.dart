import 'package:flutter/material.dart';
import 'package:texly_app/alerts/alert_box.dart';
import 'package:texly_app/screens/ride.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isCardTapped = false;
  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  void cardTap() {
    setState(() {
      isCardTapped = !isCardTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text(
            'Intercity',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          elevation: 8,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 130,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Ride(),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 12,
                      child: Image.asset(
                        'assets/icon1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 100,
                  width: 130,
                  child: GestureDetector(
                    onTap: cardTap,
                    child: Card(
                      elevation: 12,
                      shape: isCardTapped
                          ? RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 24, 34, 42),
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(8.0),
                            )
                          : RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                      child: Image.asset('assets/icon2.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Icon(
                  Icons.search,
                  size: 35,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: const TextField(
                      decoration: InputDecoration(
                        label: Text(
                          'From',
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
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Icon(
                  Icons.abc_rounded,
                  size: 35,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: const TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        label: Text(
                          'To Destination',
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
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Icon(
                  Icons.calendar_month,
                  size: 35,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: TextField(
                      enabled: true,
                      controller: _textEditingController,
                      readOnly: true,
                      onTap: () async {
                        final selectedTime = await showDialog<String>(
                          context: context,
                          builder: (BuildContext context) {
                            return const ShowTimeDialog();
                          },
                        );
                        if (selectedTime != null) {
                          setState(() {
                            _textEditingController.text = selectedTime;
                          });
                        }
                      },
                      decoration: const InputDecoration(
                        label: Text(
                          'Time',
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
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    height: 100,
                    width: 160,
                    child: GestureDetector(
                      onTap: cardTap,
                      child: Card(
                        elevation: 12,
                        shape: isCardTapped
                            ? RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 24, 34, 42),
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(8.0),
                              )
                            : RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                        child: Image.asset('assets/icon1.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 100,
                    width: 160,
                    child: GestureDetector(
                      onTap: cardTap,
                      child: Card(
                        elevation: 12,
                        shape: isCardTapped
                            ? RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 24, 34, 42),
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(8.0),
                              )
                            : RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                        child: Image.asset('assets/icon3.webp'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 100,
                    width: 160,
                    child: GestureDetector(
                      onTap: cardTap,
                      child: Card(
                        elevation: 12,
                        shape: isCardTapped
                            ? RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 24, 34, 42),
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(8.0),
                              )
                            : RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                        child: Image.asset('assets/icon4.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.person,
                  size: 35,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: const TextField(
                      decoration: InputDecoration(
                        label: Text(
                          'Number of Passengers',
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
                  size: 35,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: const TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        label: Text(
                          'To Destination',
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
                  size: 35,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: const TextField(
                      decoration: InputDecoration(
                        label: Text(
                          'Offer your Fare',
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
            BottomNavigationBar(items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_rounded,
                  ),
                  label: 'Add'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.check_box_outlined,
                  ),
                  label: 'To-Do')
            ])
          ],
        ),
      ),
    );
  }
}
