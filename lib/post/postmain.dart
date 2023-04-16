import 'package:flutter/material.dart';
import 'package:responsive/post/post.dart';

class PostMain extends StatelessWidget {
  const PostMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.white,
      child: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return Post();
          }),
    );
  }
}
