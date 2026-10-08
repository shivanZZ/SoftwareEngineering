import 'package:flutter/material.dart';

class SpotifyScreen extends StatelessWidget {
  const SpotifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recently played",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                      ),
                      SizedBox(width: 16),
                      Icon(
                        Icons.history,
                        color: Colors.white,
                      ),
                      SizedBox(width: 16),
                      Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  _artist(
                    "Daniel Ceaser",
                    "assets/images/Daniel.png",
                  ),
                  const SizedBox(width: 20),
                  _artist(
                    "Frank Ocean",
                    "assets/images/Frank.png",
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.orange,
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "Your 2026 in review",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              Row(
                children: [
                  Expanded(
                    child: _card(
                      "Your Top Songs\n2026",
                      "assets/images/top_song.png",
                      Colors.black87,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _card(
                      "Your Artists\nRevealed",
                      "assets/images/malcolm.png",
                      Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _artist(String name, String imagePath) {
    return Column(
      children: [
        CircleAvatar(
          radius: 45,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _card(
      String text,
      String imagePath,
      Color textColor,
      ) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 12,
            bottom: 12,
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
