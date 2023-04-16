import 'package:flutter/material.dart';

class Story2 extends StatelessWidget {
  const Story2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          height: 300,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/beautiful1.png',
              fit: BoxFit.cover,
            ),
          )),
      Positioned(
        top: 10,
        left: 6,
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blue)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/beautiful2.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 5,
        left: 15,
        child: Text(
          'its dummy',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ]);
  }
}
