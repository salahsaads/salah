import 'package:flutter/material.dart';
import 'package:salah/s1.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final arg = ModalRoute.of(context)!.settings.arguments as data;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '')
        ],
      ),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 28,
            color: Color(0xffFD7C4B),
          ),
        ),
        backgroundColor: Color(0xffF1F4F9),
      ),
      backgroundColor: Color(0xffF1F4F9),
      body: Padding(
        padding: const EdgeInsets.only(left: 28, right: 28),
        child: SingleChildScrollView(
          child: Column(children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                arg.s4!,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 34),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'CURATED GALLERIES',
                style: TextStyle(
                    color: Color(0xff686868), fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'mod2',arguments: 'assat/s6.png');
                        },
                        child: Container(
                          width: 109,
                          height: 72,
                          child: Image.asset('assat/s6.png', fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Oil paintings',
                        style: TextStyle(
                            color: Color(0xff979EA6),
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 109,
                        height: 72,
                        child: Image.asset('assat/s5.png', fit: BoxFit.cover),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Museums',
                        style: TextStyle(
                            color: Color(0xff979EA6),
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 109,
                        height: 72,
                        child: Image.asset('assat/s4.png', fit: BoxFit.cover),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Wall arts',
                        style: TextStyle(
                            color: Color(0xff979EA6),
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 109,
                        height: 72,
                        child: Image.asset(arg.s1!, fit: BoxFit.cover),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Oil paintings',
                        style: TextStyle(
                            color: Color(0xff979EA6),
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(children: [
              Container(
                width: 343,
                height: 210,
                child: Image.asset(
                  arg.s2!,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 343,
                height: 210,
                child: Image.asset(
                  arg.s3!,
                  fit: BoxFit.cover,
                ),
              ),
            ]),
            Column(children: [
              Container(
                width: 343,
                height: 210,
                child: Image.asset(
                  'assat/s7.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 343,
                height: 210,
                child: Image.asset(
                  'assat/s7.png',
                  fit: BoxFit.cover,
                ),
              ),
            ])
          ]),
        ),
      ),
    );
  }
}
