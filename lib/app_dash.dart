import 'package:flutter/material.dart';

class AppDash extends StatelessWidget {
  const AppDash({Key? key, this.height = 1, this.width = 6, this.color = Colors.black})
      : super(key: key);
  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashHeight = height;
        final dashWidth = width;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();

        if (boxWidth <= 10) {
          return const SizedBox (width: 10,);
        }
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
