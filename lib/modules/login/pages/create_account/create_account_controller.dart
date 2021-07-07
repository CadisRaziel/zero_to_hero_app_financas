import 'package:flutter/material.dart';
import 'package:zero_to_hero/modules/login/utils/login_validators.dart';

class CreateAccountController {
  final enabledButtonNotifier = ValueNotifier<bool>(false);
  bool get enabledButton => enabledButtonNotifier.value;
  set enabledButton(bool value) => enabledButtonNotifier.value = value;

  String _email = '';
  String _password = '';
  String _name = '';

  void onChangedAndValidate({String? email, String? password, String? name}) {
    if (email != null) {
      _email = email;
    }

    if (password != null) {
      _password = password;
    }

    if (name != null) {
      _name = name;
    }

    if (LoginValidators.email(_email) == '' &&
        LoginValidators.password(_password) == '' &&
        LoginValidators.name(_name) == '') {
      enabledButton = true;
    } else {
      enabledButton = false;
    }
  }
}
