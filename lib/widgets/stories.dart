import 'package:facebook/data/data.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length + 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
            child: Stack(
              children: [
                Container(
                  height: 250,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(index == 0
                          ? currentUser.imageUrl!
                          : stories[index - 1].imageUrl!),
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  width: 170,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          colors: [Colors.transparent, Colors.black45],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                ),
                if (index == 0)
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.add,
                        color: Colors.blue,
                        size: 50,
                      ),
                    ),
                  ),
                if (index > 0)
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.blue,
                              width: stories[index - 1].isViewed ? 5 : 0.00)),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            NetworkImage(stories[index - 1].user!.imageUrl!),
                      ),
                    ),
                  ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: SizedBox(
                    width: 155,
                    child: Text(
                      index == 0
                          ? 'Add to Story'
                          : stories[index - 1].user!.name!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
