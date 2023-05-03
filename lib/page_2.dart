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
            height: 300,
            width: double.maxFinite,
            child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/bitcoin-icon.jpg')),
          ))
    ]);
  }
}
