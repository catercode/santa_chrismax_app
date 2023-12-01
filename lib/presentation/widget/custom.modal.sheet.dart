import 'package:flutter/material.dart';

class CustomModalSheet extends StatefulWidget {
  const CustomModalSheet({
    super.key,
    required this.main,
    this.height = 1.4,
  });
  final Widget main;
  final double height;

  @override
  State<CustomModalSheet> createState() => _CustomModalSheetState();
}

class _CustomModalSheetState extends State<CustomModalSheet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Container(
            height: MediaQuery.of(context).size.height / widget.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(246, 68, 80, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: widget.main),
      ),
    );
  }
}
