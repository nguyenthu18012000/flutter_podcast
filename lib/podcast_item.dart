import 'package:flutter/material.dart';
import 'package:podcasts/detail_podcast.dart';

class PodcastItem extends StatelessWidget {
  const PodcastItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 60,
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/img0.png',
                  height: 60,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          'Helloworld podcasta',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '4 Episodes',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Icon(Icons.favorite_border_outlined),
                // IconButton(
                //   onPressed: () {},
                //   icon: const Icon(
                //     Icons.favorite,
                //     color: Color.fromARGB(255, 253, 184, 23),
                //   ),
                // ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.highlight_remove_rounded,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ) 
      ),
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => DetailPodcast())
        );
      },
    );
  }
}