import 'package:flutter/material.dart';
import 'package:podcasts/episode.dart';
import 'package:podcasts/main_layout.dart';

class DetailPodcast extends StatefulWidget {
  const DetailPodcast({super.key});

  @override
  State<DetailPodcast> createState() => _DetailPodcastState();
}

class _DetailPodcastState extends State<DetailPodcast> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(children: const Detail());
  }
}

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Episodes',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Episode(),
        Container(
          color: const Color.fromARGB(255, 202, 202, 202),
          height: 1,
        ),
        const Episode(),
        Container(
          color: const Color.fromARGB(255, 202, 202, 202),
          height: 1,
        ),
        const Episode(),
      ],
    );
  }
}