import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String text;
  final Color color;
  const ProductWidget({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height / 14,
        decoration: BoxDecoration(
            color: Color(0xFFedf0ff8), borderRadius: BorderRadius.circular(0)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: color,
            ),
          ),
        ));
  }
}
