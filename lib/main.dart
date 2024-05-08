import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:samplevault_daw_lite/src/equalizer/equalizer.dart';
import 'package:samplevault_daw_lite/src/left_menu/left_menu.dart';
import 'package:samplevault_daw_lite/src/player/player.dart';
import 'package:samplevault_daw_lite/src/right_menu/right_menu.dart';
import 'package:samplevault_daw_lite/src/top_menu/top_menu.dart';
import 'package:window_manager/window_manager.dart';
import 'dart:io';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme:
            const ColorScheme.dark(), //fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const Scaffold(
        body: Center(
          child: Column(
            children: [
              TopMenu(),
              Player(),
              Row(
                children: [LeftMenu(), Equalizer(), RightMenu()],
              )
            ],
          ),
        ),
      ),
      // theme: ThemeData(
      //   useMaterial3: true,
      //   colorScheme:
      //       ColorScheme.dark(), //fromSeed(seedColor: Colors.deepOrange),
      // ),
    );
  }
}
