import 'package:flutter/material.dart';
import 'package:widget_ellipsis/app_dash.dart';

class AppScaffoldComponent extends StatelessWidget {
  final String text;
  final bool isSelected;

  const AppScaffoldComponent({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Expanded(
          child: AppDash(
            color: Colors.black,
            width: 4,
          ),
        ),
        Checkbox(
          value: isSelected,
          onChanged: null,
        ),
      ],
    );
  }
}
