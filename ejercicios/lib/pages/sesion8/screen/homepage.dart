import 'package:ejercicio/pages/sesion8/widgets/tiktokwidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> data = [
      {
        'img':
            'https://cdn.pixabay.com/photo/2022/10/21/10/51/snail-7536762_960_720.jpg',
        'username': 'El Caracolito'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2016/02/19/10/59/art-1209519_960_720.jpg',
        'username': 'Academia de arte'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2020/12/15/06/57/girl-5832825_960_720.jpg',
        'username': 'Emma Sofia Lanz'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2015/06/01/23/43/pasta-794464_960_720.jpg',
        'username': 'Cocina Fácil'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2020/06/21/09/54/cranes-5324170_960_720.jpg',
        'username': 'Exporta con ProBussines'
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              controller: controller,
              itemBuilder: (context, index) {
                final datos = data[index];
                return TiktokWidget(
                  img: datos['img'],
                  username: datos['username'],
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Reels',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt_outlined))
              ],
            )
          ],
        ),
      ),
    );
  }
}
