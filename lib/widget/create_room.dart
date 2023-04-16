import 'package:flutter/material.dart';
import 'package:responsive/widget/room%20button.dart';

import 'onlineuser.dart';

class CreateRoom extends StatelessWidget {
  const CreateRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9.0),
                child: RoomButton(),
              );
            }

            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: OnlineUser(),
            );
          }),
    );
  }
}
