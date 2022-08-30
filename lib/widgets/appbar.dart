import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.white,
      title: const Text(
        'facebook',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue,
          fontSize: 30,
        ),
      ),
      actions: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.grey[100],
          child: IconButton(
              onPressed: () => print('search'),
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 26,
              )),
        ),
        const SizedBox(
          width: 20,
        ),
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.grey[100],
          child: IconButton(
            onPressed: () => print('messages'),
            icon: const Icon(
              Icons.messenger_outline_sharp,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
