import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  const BigCircle({super.key, required this.isTrue, this.isColor});
  final bool isTrue;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 20,
        width: 10,
        child: isTrue == true ?  DecoratedBox(
          decoration: BoxDecoration(
              color: isColor== null? Colors.white: Colors.grey.shade200,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
        ) : SizedBox(
            height: 20,
            width: 10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: isColor== null? Colors.white: Colors.grey.shade200,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))
              )
              ,
            )));
  }
}
