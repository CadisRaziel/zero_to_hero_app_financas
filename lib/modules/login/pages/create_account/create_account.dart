import 'package:flutter/material.dart';
import 'package:zero_to_hero/modules/login/utils/login_validators.dart';
import 'package:zero_to_hero/modules/login/widgets/Input_text_pass_widget.dart';
import 'package:zero_to_hero/modules/login/widgets/button_elevated_disable_widget.dart';
import 'package:zero_to_hero/modules/login/widgets/button_elevated_enabled_widget.dart';
import 'package:zero_to_hero/modules/login/widgets/button_text_widget.dart';
import 'package:zero_to_hero/modules/login/widgets/input_text_email_widget.dart';
import 'package:zero_to_hero/shared/theme/app_images.dart';
import 'package:zero_to_hero/shared/theme/app_text_Style.dart';

import 'create_account_controller.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({ Key? key }) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final controller = CreateAccountController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: size.width,
                height: size.height * 0.4,
                child: Image.asset(AppImages.logoCreateAccount, fit: BoxFit.fitHeight),
              )),
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
                        'Criando uma conta',
                        style: TextStyles.titleHome,
                      ),                      
                      SizedBox(height: 15),
                      InputTextEmailWidget(
                        onChange: (name) =>
                            controller.onChangedAndValidate(name: name),
                        onValidate: LoginValidators.name,
                        label: 'Nome:',
                      ),
                       SizedBox(
                        height: 10,
                      ),
                      InputTextEmailWidget(
                        onChange: (email) =>
                            controller.onChangedAndValidate(email: email),
                        onValidate: LoginValidators.email,
                        label: 'Email:',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InputTextPassWidget(
                        onChange: (password) =>
                            controller.onChangedAndValidate(password: password),
                        onValidate: LoginValidators.password,
                        label: 'Senha',
                      ),
                      ValueListenableBuilder<bool>(
                        valueListenable: controller.enabledButtonNotifier,
                        builder: (context, enabled, widget) => enabled
                            ? ElevatedButtonEnabledWidget(
                                voidCallback: () {},
                                label: 'Criar Conta',
                              )
                            : ElevatedButtonDisabledWidget(
                                label: 'Criar Conta',
                              ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      ButtonTextWidget(
                        voidCallback: () {
                          Navigator.pop(context);
                        },
                        label: 'Já tem uma conta? Faça login',
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