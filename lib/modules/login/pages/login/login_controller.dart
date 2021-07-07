import 'package:flutter/material.dart';
import 'package:zero_to_hero/modules/login/utils/login_validators.dart';

///classe para ativar o botão somente quando os dados de login e senha for preenchidos corretamente
class LoginController {
  final enabledButtonNotifier = ValueNotifier<bool>(false);
  bool get enabledButton => enabledButtonNotifier.value;
  set enabledButton(bool value) => enabledButtonNotifier.value = value;

  String _email = '';
  String _password = '';

  void onChangedAndValidate({String? email, String? password}){
    if(email != null){
      _email = email;
    }
    if(password != null){
      _password = password;
    }
    if(LoginValidators.email(_email) == '' && LoginValidators.password(_password) == ''){
      enabledButton = true;
    } else {
      enabledButton = false;
    }
  }
}