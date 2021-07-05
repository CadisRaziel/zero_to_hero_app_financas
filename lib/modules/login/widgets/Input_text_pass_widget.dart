import 'package:flutter/material.dart';

import 'package:zero_to_hero/shared/theme/app_text_Style.dart';

///[Observação importante]
///precisei dividir o mesmo widget em dois pois eu nao consegui habilitar o nullsafety em um 'enum'
///pois eu precisava colocar os 'suffixIcon'

//typedef para verificar se o email esta correto ou não
typedef String InputValidate(String value);

class InputTextPassWidget extends StatefulWidget {
  final String label;
  final InputValidate onValidate;
  const InputTextPassWidget({
    Key? key,
    required this.label,
    required this.onValidate,
  }) : super(key: key);

  @override
  _InputTextPassWidgetState createState() => _InputTextPassWidgetState();
}

class _InputTextPassWidgetState extends State<InputTextPassWidget> {
  String? _error;

  void onChangedValidate(String value) {
    if (value.isNotEmpty) {
      _error = widget.onValidate(value);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6, right: 250),
          child: Text(
            widget.label,
            style: TextStyles.titleHome,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TextField(
            onChanged: onChangedValidate,
            cursorColor: Colors.teal,
            style: TextStyles.emailSenha,
            obscureText: true,
            decoration: InputDecoration(
              errorText: _error,
              //focusedErrorBorder = para tirar a linha vermelha do input quando email não é validio
              focusedErrorBorder: InputBorder.none,
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