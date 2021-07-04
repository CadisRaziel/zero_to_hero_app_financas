import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:zero_to_hero/modules/login/widgets/button_elevated_widget.dart';
import 'package:zero_to_hero/shared/theme/app_text_Style.dart';

import 'widgets/button_text_widget.dart';
import 'widgets/input_text_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: Colors.green,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: size.width,
              height: size.height * 0.70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 32, right: 32),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Bem Vindo',
                        style: TextStyles.titleHome,
                      ),
                      Text(
                        'Mantenha suas contas em dia',
                        style: TextStyles.titleHome,
                      ),
                      SizedBox(height: 40),
                      InputTextWidget(
                        label: 'Email:',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InputTextWidget(
                        label: 'Senha:',
                      ),
                      ElevatedButtonWidget(
                        voidCallback: (){},
                        label: 'Entrar',
                      ),
                      ButtonTextWidget(
                      voidCallback: (){},
                        label: 'Esqueci minha senha',
                      ),
                      ButtonTextWidget(
                        voidCallback: (){},
                        label: 'Criar Conta',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
