import 'package:flutter/material.dart';

class RightMenu extends StatelessWidget {
  const RightMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Color.fromRGBO(87, 85, 85, 0.64),
        height: MediaQuery.of(context).size.height * 0.85,
        width: MediaQuery.of(context).size.width * 0.15,
        // decoration: BoxDecoration(border: Border.all(color: Colors.white54)),
        child: Column(
          children: [
            Text("Библиотека сэмплов"),
            // ListView.builder(itemBuilder: (BuildContext context, String name) {
            //   return Text(name);
            // })
          ],
        ),

        // constraints: BoxConstraints(minWidth: 100),
      ),
    );
  }
}
