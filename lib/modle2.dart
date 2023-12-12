import 'package:flutter/material.dart';

class mode2 extends StatefulWidget {
  const mode2({super.key});

  @override
  State<mode2> createState() => _mode2State();
}

class _mode2State extends State<mode2> {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments.toString();
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.settings), label: '')
        ],
      ),
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(arg), fit: BoxFit.cover),
        )),
        Container(
          width: 150,
          height: 150,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 28, right: 28),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 28,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 28,
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
