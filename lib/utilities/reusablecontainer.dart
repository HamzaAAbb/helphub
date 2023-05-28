import 'package:flutter/material.dart';

class CContainer extends StatelessWidget {
  CContainer({
    this.backgroundColor,
    this.margin = 10,
    this.padding = 0,
    this.child,
    this.onPressed,
    this.height = 50,
    this.borderradius = 12,
  });
  Color? backgroundColor = Color(0xFFFFFFFF);
  double margin;
  double padding;
  Widget? child = Container();
  double height;
  void Function()? onPressed = () {};
  double borderradius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: height,
          child: child,
          margin: EdgeInsets.all(margin),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderradius),
          ),
        ),
      ),
    );
  }
}


