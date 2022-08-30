import 'package:flutter/material.dart';

class Media extends StatelessWidget {
  const Media({Key? key}) : super(key: key);

  Widget _media(onTap, String text, IconData icon, Color color) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 25,
            color: color,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 55,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _media(
            () => print('live'),
            'Live',
            Icons.videocam_sharp,
            Colors.red,
          ),
          const VerticalDivider(),
          _media(
            () => print('Photo'),
            'Photo',
            Icons.photo_library,
            Colors.green,
          ),
          const VerticalDivider(),
          _media(
            () => print('Room'),
            'Room',
            Icons.video_call,
            Colors.purple[200]!,
          ),
        ],
      ),
    );
  }
}
