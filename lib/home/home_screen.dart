import 'package:flutter/material.dart';

import '../list/story/story.dart';
import '../post/postmain.dart';
import '../responsive/responsive.dart';
import '../widget/circule_button.dart';
import '../widget/creat_post.dart';
import '../widget/create_room.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Responsive.isMobile(context)
                ? PreferredSize(
                    child: Text(
                      'Facebook',
                      style: TextStyle(color: Colors.green),
                    ),
                    preferredSize: Size(screenSize.width, 700))
                : Text(
                    'Facebook',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1.2),
                  ),
            centerTitle: false,
            floating: true,
            actions: [
              RoundButton(
                  onPressed: () => print('search'),
                  icon: Icons.search,
                  IconSize: 30.0),
              RoundButton(
                  onPressed: () => print('Messenger'),
                  icon: Icons.message,
                  IconSize: 30.0)
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePost(),
          ),
          SliverPadding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
              sliver: SliverToBoxAdapter(
                child: CreateRoom(),
              )),
          SliverPadding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
              sliver: SliverToBoxAdapter(
                child: Story(),
              )),
          SliverPadding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
              sliver: SliverToBoxAdapter(
                child: PostMain(),
              )),
        ],
      ),
    );
  }
}
