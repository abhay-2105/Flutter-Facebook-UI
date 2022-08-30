import 'package:flutter/material.dart';
import 'package:facebook/widgets/appbar.dart';
import '../widgets/Posts.dart';
import '../widgets/create_post.dart';
import '../widgets/create_room.dart';
import '../widgets/media.dart';
import '../widgets/stories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) => setState(() {
                _currentIndex = value;
              }),
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.monitor), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: '')
          ]),
      body: const CustomScrollView(
        slivers: [
          Appbar(),
          SliverToBoxAdapter(
            child: CreatePost(),
          ),
          SliverToBoxAdapter(
            child: Media(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          SliverToBoxAdapter(
            child: CreateRoom(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          SliverToBoxAdapter(
            child: Stories(),
          ),
          Posts()
        ],
      ),
    );
  }
}
