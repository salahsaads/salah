import 'package:flutter/material.dart';
import 'package:salah/model.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final T1 = TextEditingController();
  final T2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.settings), label: '')
        ],
      ),
      backgroundColor: const Color(0xffF1F4F9),
      body: Padding(
        padding: const EdgeInsets.only(left: 28, right: 28),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "Boards",
                  style: TextStyle(
                      color: Color(0xff474747),
                      fontSize: 34,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Following galleries to power up your art careere',
                style: TextStyle(
                    color: Color(0xff979EA6),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'painting      x',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  width: 111,
                  height: 41,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                          colors: [Color(0xffFD814A), Color(0xffFC5C4C)])),
                ),
                const SizedBox(
                  width: 28,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Illustration    x',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  width: 111,
                  height: 41,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                          colors: [Color(0xffFD814A), Color(0xffFC5C4C)])),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            name(
              g1: 'assat/Rectangle.png',
              g2: 'assat/Rectangle 2.1.png',
              g3: 'assat/Rectangle 2.4.png',
              g4: 'painting',
            ),
            const SizedBox(
              height: 10,
            ),
            name(
                g1: 'assat/Rectangle (1).png',
                g2: 'assat/Rectangle 2.1 (1).png',
                g3: 'assat/Rectangle 2.4 (1).png',
                g4: 'Illustrations'),
          ]),
        ),
      ),
    );
  }
}
