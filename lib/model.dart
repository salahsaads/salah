import 'package:flutter/material.dart';
import 'package:salah/s1.dart';

// ignore: camel_case_types, must_be_immutable
class name extends StatelessWidget {
  String? g1;
  String? g2;
  String? g3;
  String? g4;
  name({super.key, required this.g1, required this.g2, required this.g3,required this.g4});

  @override
  Widget build(BuildContext context) {
    final s = data(s1: g1, s2: g2, s3: g3,s4:g4);
    return Container(
      width: (500),
      height: 225,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 199, 161, 161).withOpacity(.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      child: Column(children: [
        Row(
          children: [
            Container(
              width: 175,
              height: 164,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'screen2go', arguments: s);
                },
                child: Image.asset(
                  g1!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: 180,
                  height: 83,
                  child: Image.asset(
                    g2!,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 180,
                  height: 81,
                  child: Image.asset(
                    g3!,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Text(
                'paintings',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              width: 240,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                alignment: Alignment.center,
                width: 20,
                height: 20,
                child: Text(
                  '+',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                decoration: BoxDecoration(
                    color: Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(5)),
              ),
            )
          ],
        )
      ]),
    );
  }
}
