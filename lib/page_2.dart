import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.max, children: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
      child: SizedBox(
        height: 100,
        width: double.maxFinite,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/bitcoin-icon.png'),
        ),
      )
    ),
    Stack(
      fit: StackFit.expand,
      children: <Widget>[
      CircleAvatar(
        radius: 30.0,
        backgroundImage:
        NetworkImage("https://via.placeholder.com/150/92c952"),
          backgroundColor: Colors.transparent,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
          'assets/images/bitcoin-icon.png',
          width: 20.9,
          height: 19.9,
          ),
        ),
      ],
    )
    ]);
  }
}
