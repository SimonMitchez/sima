import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sima_app1/screens/AccountCreation/loginScreen.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;
  bool _isVideoInitializing = true;
  bool _isVideoPlaying = false;
  bool _isVideoError = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

 Future<void> _initializeVideo() async {
  try {
    _controller = VideoPlayerController.asset('assets/videos/sima.mp4');
    await _controller.initialize();
    setState(() {
      _isVideoInitializing = false;
      _isVideoPlaying = true;
    });
    _controller.setLooping(false); // Set looping to false
    await _controller.play();
    _controller.addListener(() {
      if (_controller.value.position >= _controller.value.duration) {
        _navigateToLogin();
      }
    });
  } catch (error) {
    print("Error initializing video: $error");
    setState(() {
      _isVideoInitializing = false;
      _isVideoError = true;
    });
  }
}

  void _navigateToLogin() {
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    }
  }

  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Error Loading Video'),
        content: Text(
            'There was a problem playing the splash screen video. Please try again later.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: _isVideoInitializing
               ? CircularProgressIndicator() // Show loading indicator
                : _isVideoError
                   ? Text('Error loading video')
                    : _controller.value.isInitialized
                       ? AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          )
                        : Container(),
          ),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant SplashScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_isVideoPlaying && _controller.value.duration!= null) {
      Future.delayed(_controller.value.duration).then((_) {
        _navigateToLogin();
      });
    }
  }
}