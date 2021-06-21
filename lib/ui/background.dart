import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final String topImage;
  final String bottomImage;
  const Background({
    Key? key,
    required this.child,
    required this.topImage,
    required this.bottomImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              topImage,
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              bottomImage,
              width: size.width * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
