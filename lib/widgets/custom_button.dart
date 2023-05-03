// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final double width;
  final String title;
  final Function() func;
  const CustomButton(
      {Key? key,
      required this.color,
      required this.width,
      required this.title,
      required this.func})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        color: color,
      ),
      child: MaterialButton(
        onPressed: func,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
