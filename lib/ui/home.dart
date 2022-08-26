import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BizCard",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent.shade700,
      ),
      backgroundColor: Colors.white70,
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),
            _getAvater(),
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 300,
      height: 200,
      margin: const EdgeInsets.all(50.0),
      decoration: BoxDecoration(
          color: Colors.cyanAccent, borderRadius: BorderRadius.circular(15.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "MD HASNAIN RABBY",
            style: TextStyle(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w800),
          ),
          const Text("Flutter Developer."),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.person_add_alt_1_rounded),
              Text(" @hasnainrabby"),
            ],
          )
        ],
      ),
    );
  }

  Container _getAvater() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(60.0)),
          border: Border.all(color: Colors.cyan, width: 5.0),
          image: const DecorationImage(
              image: NetworkImage("https://picsum.photos/300/300"))),
    );
  }
}