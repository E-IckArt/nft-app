import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nft_app/page_1.dart';
import 'package:nft_app/page_2.dart';
import 'package:nft_app/page_3.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter - Basics';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: const OnboardingPager(),
      ),
    );
  }
}

class OnboardingPager extends StatelessWidget {
  const OnboardingPager({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      child: Container(
        color: const Color.fromARGB(255, 240, 239, 235),
        child: PageView(
          controller: controller,
          children: <Widget>[
            Center(
              child: Page1(),
            ),
            Center(
              child: Page2(),
            ),
            Center(
              child: Page3(),
            )
          ],
        ),
      ),
    );
  }
}
