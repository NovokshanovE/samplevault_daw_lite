import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:audioplayers/audioplayers.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      color: Color.fromRGBO(35, 35, 35, 0.588),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "SampleVault DAW",
            style: TextStyle(
                inherit: true,
                // backgroundColor: Color.fromARGB(0, 216, 119, 9),
                fontSize: 14.0),
          ),
          ElevatedButton(
              onPressed: () {
                print("press Save");
              },
              child: Text("Save")),
        ],
      ),
    );
  }
}
