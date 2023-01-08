import 'package:flutter/material.dart';
import 'package:podcasts/main_layout.dart';
import 'package:podcasts/podcast_item.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(children: FavoriteScreen());
  }
}

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Favorite Podcasts',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        Column(
          children: [
            const PodcastItem(),
            Container(
              color: const Color.fromARGB(255, 202, 202, 202),
              height: 1,
            ),
            const PodcastItem(),
            Container(
              color: const Color.fromARGB(255, 202, 202, 202),
              height: 1,
            ),
            const PodcastItem(),
            Container(
              color: const Color.fromARGB(255, 202, 202, 202),
              height: 1,
            ),
            const PodcastItem()
          ],
        ),
      ],
    );
  }
}