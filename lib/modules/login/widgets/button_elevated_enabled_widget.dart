import 'package:flutter/material.dart';

import 'package:zero_to_hero/shared/theme/app_text_Style.dart';

class ElevatedButtonEnabledWidget extends StatelessWidget {
  final VoidCallback voidCallback;
  final String label;
  const ElevatedButtonEnabledWidget({
    Key? key,
    required this.voidCallback,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ElevatedButton(
                onPressed: voidCallback,
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                  shadowColor: Colors.lightGreenAccent,
                  elevation: 5,
                ),
                child: Text(
                  label,
                  style: TextStyles.titleHome,
                )),
          ),
        ],
      ),
    );
  }
}
