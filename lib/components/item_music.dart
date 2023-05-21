import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemMusic extends StatelessWidget {
  const ItemMusic({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
    required this.path,
  }) : super(key: key);

  final String image;
  final String title;
  final String author;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: 24,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  author,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
