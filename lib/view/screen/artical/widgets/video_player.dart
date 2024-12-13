import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../../../controllers/article/create_article_controller.dart';
import '../../../../utils/app_colors.dart';

class VideoPlayerItem extends StatefulWidget {
  const VideoPlayerItem({super.key, required this.item});

  final item;

  @override
  State<VideoPlayerItem> createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  VideoPlayerController? _controller;

  init() {
    _controller = VideoPlayerController.file(File(widget.item['source']!))
      ..initialize().then((_) {
        setState(() {}); // Rebuild to display the video player.
      });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateArticleController>(
      builder: (controller) => Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0xffEEEEEE),
                borderRadius: BorderRadius.circular(12)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: VideoPlayer(_controller!),
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              child: GestureDetector(
                  onTap: () => CreateArticleController.instance.removeImage(
                        widget.item,
                      ),
                  child: const CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 12,
                      child: Icon(
                        Icons.clear,
                        size: 16,
                        color: AppColors.white,
                      ))))
        ],
      ),
    );
  }
}
