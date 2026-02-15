import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoPlayerPage extends StatefulWidget {
  final String? videoUrl;
  const VideoPlayerPage({super.key, required this.videoUrl});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController _videoController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();

    // VideoController for asset video
    _videoController = VideoPlayerController.asset(widget.videoUrl!)
      ..initialize().then((_) {
        setState(() {});
      });

    // ChewieController with default overlay buttons
    _chewieController = ChewieController(
      videoPlayerController: _videoController,
      autoPlay: false,
      looping: false,
      showControls: true, // <-- overlay buttons back
      allowFullScreen: true,
      allowPlaybackSpeedChanging: true,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.blue,
        handleColor: Colors.blueAccent,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.lightBlue,
      ),
    );
  }

  @override
  void dispose() {
    _videoController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  _videoController.value.isInitialized
            ? Container(
          height: 250,
          width: double.infinity,
          color: Colors.black,
          child: Chewie(controller: _chewieController!),
        )
            : Center(child: CircularProgressIndicator());
  }
}
