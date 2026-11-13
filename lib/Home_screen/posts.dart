import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class postsWidget extends StatelessWidget {
   String postImage;
   String profileImage;
   String date;
   String name;

  postsWidget({
    required this.name,
    required this.profileImage,
    required this.postImage,
    this.date = "8h",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  profileImage,
                  width: 43,
                  height: 43,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:50),
            child: Text(date,
              style: TextStyle(
                color: Color(0xFF898F9C),
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Post Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              postImage,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
