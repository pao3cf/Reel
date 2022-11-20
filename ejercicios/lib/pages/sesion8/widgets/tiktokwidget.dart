import 'package:flutter/material.dart';

class TiktokWidget extends StatelessWidget {
  final String? img;
  final String? username;

  const TiktokWidget(
      {super.key, this.img, this.username, required TextStyle style});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(fit: BoxFit.fill, '$img'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '$username',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const Icon(Icons.verified, color: Colors.lightBlue)
                    ],
                  ),
                  const Text(
                    'Todo es más simple',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    '#fyp #creadordecontenido #vida',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.favorite_outline_sharp),
                      Text('1k'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.mode_comment_outlined),
                      Text('768')
                    ],
                  ),
                  Column(
                    children: const [Icon(Icons.send)],
                  ),
                  Column(
                    children: const [Icon(Icons.share)],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
