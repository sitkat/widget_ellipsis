import 'package:flutter/material.dart';
import 'package:widget_ellipsis/app_dash.dart';

class AppScaffoldComponent extends StatefulWidget {
  final String text;
  final bool isSelected;

  const AppScaffoldComponent(
      {super.key, required this.text, required this.isSelected});

  @override
  _AppScaffoldComponentState createState() => _AppScaffoldComponentState();
}

class _AppScaffoldComponentState extends State<AppScaffoldComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 350),
          child: Flexible(
            flex: 1,
            child: Text(
              widget.text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        widget.text.length >= 45
            ? const SizedBox(width: 0)
            : const Expanded(
                child: AppDash(
                  color: Colors.black,
                  width: 4,
                ),
              ),
        Checkbox(
          value: widget.isSelected,
          onChanged: null,
        ),
      ],
    );
  }
}
