import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  bool _isFollowing = false;
  bool _isLiked = false;

  Widget _buildFollowButton() {
    return SizedBox(
      height: 40,
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            _isFollowing = !_isFollowing;
          });
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: _isFollowing ? Colors.transparent : Colors.white,
          side: BorderSide(
            color: _isFollowing ? Colors.white : Colors.transparent,
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        child: Text(
          _isFollowing ? "Followed" : "Follow",
          style: TextStyle(
            color: _isFollowing ? Colors.white : Colors.black,
            fontSize: 16,
            fontWeight: _isFollowing ? FontWeight.normal : FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildLikeButton() {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: _isLiked ? Colors.blue : Colors.white,
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          setState(() {
            _isLiked = !_isLiked;
          });
        },
        icon: Icon(
          Icons.thumb_up_outlined,
          color: _isLiked ? Colors.white : Colors.black,
          size: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/video_image.png",
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 40,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white30,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.white, size: 30),
              ),
            ),
          ),

          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/video_p.png"),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 12),
                    Text(
                      "Jessica Roy",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 12),
                    _buildFollowButton(),
                    SizedBox(width: 14),
                    _buildLikeButton(),
                  ],
                ),
                SizedBox(height: 8),

                Text(
                  "Start Learning Vocabulary Today!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "So what is the necessary to learn \nvocabulary in today world. Everyone \nis learn..... ",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    children: [
                      TextSpan(
                        text: "read more",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
