import 'package:flutter/material.dart';

import 'package:zero_to_hero/shared/theme/app_text_Style.dart';

class InputTextWidget extends StatelessWidget {
  final String label;
  const InputTextWidget({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6, right: 250),
          child: Text(
            label,
            style: TextStyles.titleHome,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TextField(
            cursorColor: Colors.teal,
            decoration: InputDecoration(
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                    color: Colors.teal, style: BorderStyle.solid, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                    color: Colors.white, style: BorderStyle.solid, width: 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
