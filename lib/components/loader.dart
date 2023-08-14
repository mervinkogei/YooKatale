import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  final double? scale;
  Loader({Key? key, this.scale}) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: widget.scale,
      child: CircularProgressIndicator(
        color: Colors.black,
        semanticsLabel: 'Circular Progress bar',
      ),
    );
  }
}