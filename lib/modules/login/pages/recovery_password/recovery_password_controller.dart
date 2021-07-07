import 'package:flutter/material.dart';
import 'package:zero_to_hero/modules/login/utils/login_validators.dart';

class RecoveryPasswordController {
  final enabledButtonNotifier = ValueNotifier<bool>(false);
  bool get enabledButton => enabledButtonNotifier.value;
  set enabledButton(bool value) => enabledButtonNotifier.value = value;

  String _email = '';

  void onChangedAndValidate({String? email}){
    if(email != null){
      _email = email;
    }    
    if(LoginValidators.email(_email) == ''){
      enabledButton = true;
    } else {
      enabledButton = false;
    }
  }
}