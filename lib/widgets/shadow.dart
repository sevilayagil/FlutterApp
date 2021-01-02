import 'package:flutter/material.dart';

class ShadowWidget extends StatelessWidget {
  const ShadowWidget(
      {Key key, @required this.child, this.color, this.elavation})
      : super(key: key);
  final Widget child;
  final double elavation;
  final Color color;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      shadowColor: Colors.black,
      elevation: 10,
      child: this.child,
    );
  }
}
