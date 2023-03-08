import 'package:flutter/material.dart';
import 'board_page.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: _controller, children: [
        boardPage(
            "assets/images/img1.jpg",
            "Discover new places in your area ",
            "Check our app and find thousands of places nears you ",
            _controller,
            false,
            context),
        boardPage(
            "assets/images/img3.jpg",
            "Discover new places in your area ",
            "Check our app and find thousands of places nears you ",
            _controller,
            false,
            context),
        boardPage(
            "assets/images/img2.jpeg",
            "Discover new places in your area ",
            "Check our app and find thousands of places nears you ",
            _controller,
            true,
            context),
      ]),
    );
  }
}
