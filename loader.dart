import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  final Color color;
  final double? width;
  final double? height;

  const Loader({super.key, required this.color, this.width, this.height});

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    return   Center(
      child: SizedBox(
        width: widget.width ?? 50,
        height: widget.height ?? 50,
        child: CircularProgressIndicator(
          color:  widget.color,
        ),
      ),
    );
  }
}