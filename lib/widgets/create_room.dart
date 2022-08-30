import 'package:facebook/data/data.dart';
import 'package:flutter/material.dart';

class CreateRoom extends StatelessWidget {
  const CreateRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: onlineUsers.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 16, bottom: 16, left: 10),
                    child: GestureDetector(
                      onTap: () => print('create Room'),
                      child: Container(
                        height: 62,
                        width: 160,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.blue[200]!, width: 4),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.video_call_sharp,
                              color: Colors.pink,
                              size: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 80,
                              child: Text(
                                'Create Room',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            NetworkImage(onlineUsers[index - 1].imageUrl!),
                        backgroundColor: Colors.grey,
                      ),
                      Positioned(
                        bottom: 20,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
