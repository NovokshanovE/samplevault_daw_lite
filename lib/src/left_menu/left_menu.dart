import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LeftMenu extends StatelessWidget {
  const LeftMenu({
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
          children: [EffectsLib(), EffectsApplied()],
        ),

        // constraints: BoxConstraints(minWidth: 100),
      ),
    );
  }
}

class EffectsLib extends StatelessWidget {
  const EffectsLib({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(87, 85, 85, 0.64),
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Text("Библиотека эффектов"),
          ),
          Column(
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Эквалайзер"))
            ],
          )
        ],
      ),
    );
  }
}

class EffectsApplied extends StatefulWidget {
  const EffectsApplied({
    super.key,
  });

  @override
  State<EffectsApplied> createState() => _EffectsAppliedState();
}

class _EffectsAppliedState extends State<EffectsApplied> {
  List<String> effects = <String>["Tom", "Alice", "Bob", "Sam", "Kate"];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(86, 85, 85, 0.64),
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            // width: MediaQuery.of(context).size.width * 1,
            child: Text("Примененные эффекты"),
          ),
          // ListView.builder(
          //   itemCount: effects.length,
          //   itemBuilder: (context, id) {
          //     return ListTile(title: Text("$effects[id]"));
          //   },
          // )
        ],
      ),
    );
  }
}
