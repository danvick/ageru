import 'package:ageru/config.dart';
import 'package:flutter/material.dart';

class FancyGradientButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

  FancyGradientButton({
    @required this.child,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          gradient: Config.linearGradient,
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
