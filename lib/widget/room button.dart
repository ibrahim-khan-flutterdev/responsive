import 'package:flutter/material.dart';

class RoomButton extends StatelessWidget {
  const RoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 10, 10),
      child: Container(
        width: 110,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue)),
        child: Row(
          children: [
            IconButton(
                onPressed: () => print('room button'),
                icon: Icon(
                  Icons.video_call,
                  color: Colors.purpleAccent,
                )),
            Text('Create\nroom')
          ],
        ),
      ),
    );
  }
}
