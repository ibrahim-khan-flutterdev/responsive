import 'package:flutter/material.dart';

import 'Story2.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 30,
          itemBuilder: (BuildContext, int index) {
            if (index == 0) {
              return IconButton(onPressed: () {}, icon: Icon(Icons.add));
            }
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Story2(),
            );
          }),
    );
  }
}
