
import 'package:podcasts/podcast_item.dart';

import 'main_layout.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(children: const HomeUI());
  }
}

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'All Podcasts',
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