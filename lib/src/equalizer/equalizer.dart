import 'package:flutter/material.dart';
import 'package:music_visualizer/music_visualizer.dart';
import 'package:samplevault_daw_lite/src/equalizer/equalizer_settings.dart';

class Equalizer extends StatelessWidget {
  const Equalizer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Color.fromRGBO(60, 59, 59, 0.777),
        width: MediaQuery.of(context).size.width * 0.70,
        height: MediaQuery.of(context).size.height * 0.85,
        child: Column(
          children: [AudioTrack(), EqualizerSettings()],
        ),
      ),
    );
  }
}

class AudioTrack extends StatelessWidget {
  const AudioTrack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.red[900]!,
      const Color.fromARGB(255, 131, 223, 137)!,
      Colors.blue[900]!,
      const Color.fromARGB(255, 174, 162, 160)!
    ];

    final List<int> duration = [900, 700, 600, 800, 500, 400, 1000, 500, 1200];
    return Container(
      padding: EdgeInsets.all(5),
      color: Color.fromRGBO(83, 77, 77, 0.776),
      width: MediaQuery.of(context).size.width * 0.70,
      height: MediaQuery.of(context).size.height * 0.40,
      child: MusicVisualizer(
        barCount: 30,
        colors: colors,
        duration: duration,
      ),
    );
  }
}
