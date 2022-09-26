import 'package:flutter/material.dart';

class Cartlistbackground extends StatelessWidget {
  final Widget child;
  const Cartlistbackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SizedBox(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                left: 0,
                top: 0,
                child: Image.asset(
                  ("asset/coffe/main_top.png"),
                  width: size.width * 0.4,
                )),
            Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(
                  ("asset/coffe/bottom.png"),
                  width: size.width * 0.4,
                )),
            child
          ],
        ),
      ),
    );
  }
}
