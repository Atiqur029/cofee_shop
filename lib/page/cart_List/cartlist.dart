import 'package:flutter/material.dart';

class Cartlistbackground extends StatelessWidget {
  const Cartlistbackground({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Container(
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
                ))
          ],
        ),
      ),
    );
  }
}
