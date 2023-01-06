import 'package:flutter/material.dart';

class Episode extends StatelessWidget {
  const Episode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        children: const [
          Expanded(
            flex: 2,
            child: Text(
              style: TextStyle(
                fontSize: 18,
              ),
              'Ep1'
            ),
          ),
          Expanded(
            flex: 10,
            child: Text(
              style: TextStyle(
                fontSize: 18
              ),
              'Introduction',
            ),
          ),
          Expanded(
            child: Text('7m'),
          ),
        ],
      ),
    );
  }
}