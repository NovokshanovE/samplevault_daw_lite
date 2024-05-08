import 'package:equalizer_flutter/equalizer_flutter.dart';
import 'package:flutter/material.dart';

class EqualizerSettings extends StatefulWidget {
  const EqualizerSettings({
    super.key,
  });

  @override
  State<EqualizerSettings> createState() => _EqualizerSettingsState();
}

class _EqualizerSettingsState extends State<EqualizerSettings> {
  bool enableCustomEQ = false;
  @override
  void initState() {
    super.initState();
    EqualizerFlutter.init(0);
  }

  @override
  void dispose() {
    EqualizerFlutter.release();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
