import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: PlaceScreen(),
  ));
}

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.network(
                  fit: BoxFit.cover,
                  height: 300,
                  "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/f5/3e/e5/nusa-penida-island.jpg?w=1200&h=-1&s=1"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Nusa Penida',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Picture',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ImageBox(
                          image:
                              'https://static.saltinourhair.com/wp-content/uploads/2018/10/23145620/things-to-do-nusa-penida-angles-billabong.jpg',
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        ImageBox(
                          image:
                              'https://static.saltinourhair.com/wp-content/uploads/2018/10/23145620/things-to-do-nusa-penida-angles-billabong.jpg',
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        ImageBox(
                          image:
                              'https://static.saltinourhair.com/wp-content/uploads/2018/10/23145620/things-to-do-nusa-penida-angles-billabong.jpg',
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        ImageBox(
                          image:
                              'https://static.saltinourhair.com/wp-content/uploads/2018/10/23145620/things-to-do-nusa-penida-angles-billabong.jpg',
                        ),
                        SizedBox(
                          width: 4,
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'More in Bali>',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 300,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ImageBox extends StatelessWidget {
  final String image;
  const ImageBox({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        height: 100,
        image,
      ),
    );
  }
}
