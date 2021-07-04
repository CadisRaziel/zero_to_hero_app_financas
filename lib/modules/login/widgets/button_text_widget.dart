import 'package:flutter/material.dart';

import 'package:zero_to_hero/shared/theme/app_text_Style.dart';

//ao apertar a tecla 'FN + F2' com o mouse em cima do nome da classe ele altera de tudo !!
class ButtonTextWidget extends StatelessWidget {
  final VoidCallback voidCallback;
  final String label;
  const ButtonTextWidget({
    Key? key,
    required this.voidCallback,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: voidCallback,
            child: Text(label, style: TextStyles.titlebutton),
          ),
        ],
      ),
    );
  }
}
