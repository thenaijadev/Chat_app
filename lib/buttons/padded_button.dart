import 'package:flutter/material.dart';

class PaddedButton extends StatelessWidget {
  const PaddedButton(
      {Key? key,
      @required this.color,
      @required this.onPressed,
      @required this.child})
      : super(key: key);
  final Color? color;
  final void Function()? onPressed;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: child,
        ),
      ),
    );
  }
}
