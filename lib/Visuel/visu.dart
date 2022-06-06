import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:haroldify/Manager/page_manager.dart';

SizedBox space(double height) {
  return SizedBox(
    height: height,
  );
}

AppBar appBar() {
  return AppBar(
    title: const Text(
      "HaroldIfy",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'Courier',
      ),
    ),
    centerTitle: true,
    backgroundColor: Color.fromARGB(170, 138, 165, 219),
  );
}

ValueListenableBuilder<ProgressBarState> progressBar(PageManager pageManager) {
  return ValueListenableBuilder<ProgressBarState>(
    valueListenable: pageManager.progressNotifier,
    builder: (_, value, __) {
      return ProgressBar(
        progress: value.current,
        buffered: value.buffered,
        total: value.total,
        onSeek: pageManager.seek,
        thumbColor: const Color.fromARGB(255, 255, 0, 0),
        progressBarColor: Colors.red,
        thumbGlowColor: Colors.red,
        baseBarColor: Colors.white,
        bufferedBarColor: const Color.fromARGB(255, 141, 74, 70),
        timeLabelTextStyle: const TextStyle(color: Colors.white, fontSize: 15),
      );
    },
  );
}

Image songPicture(String path) {
  return Image.asset(
    path,
    width: 200,
  );
}

Text songTitle(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 255, 255, 255),
      fontFamily: 'Courier',
    ),
  );
}

Text songArtist(String artist) {
  return Text(
    artist,
    style: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontFamily: 'Courier',
    ),
  );
}
