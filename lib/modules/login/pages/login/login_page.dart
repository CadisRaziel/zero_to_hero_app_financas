import 'package:flutter/material.dart';
import 'package:zero_to_hero/modules/login/pages/login/login_controller.dart';
import 'package:zero_to_hero/modules/login/utils/login_validators.dart';
import 'package:zero_to_hero/modules/login/widgets/button_elevated_enabled_widget.dart';
import 'package:zero_to_hero/shared/theme/app_images.dart';
import 'package:zero_to_hero/shared/theme/app_text_Style.dart';

import '../../widgets/button_elevated_disable_widget.dart';
import '../../widgets/button_text_widget.dart';
import '../../widgets/input_text_email_widget.dart';
import '../../widgets/Input_text_pass_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();

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
                child: Image.asset(AppImages.logoLogin, fit: BoxFit.fitHeight),
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
                        'Bem Vindo',
                        style: TextStyles.titleHome,
                      ),
                      Text(
                        'Mantenha suas contas em dia',
                        style: TextStyles.titleHome,
                      ),
                      SizedBox(height: 25),

                      ///[caso eu coloque o botão logar com google tenho que por height:20]
                      // SizedBox(height: 20),
                      InputTextEmailWidget(
                        onChange: (email) =>
                            controller.onChangedAndValidate(email: email),
                        onValidate: LoginValidators.email,
                        label: 'Email:',
                      ),
                      SizedBox(
                        height: 20,
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
                                label: 'Entrar',
                              )
                            : ElevatedButtonDisabledWidget(
                                label: 'Entrar',
                              ),
                      ),

                      ///[caso eu queria um botão para entrar com conta google]
                      // ElevatedButtonWidget(
                      //   voidCallback: (){},
                      //   label: 'Entrar',
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonTextWidget(
                        voidCallback: () {
                           Navigator.pushNamed(context, 'recovery_password_page');
                        },
                        label: 'Esqueci minha senha',
                      ),
                      ButtonTextWidget(
                        voidCallback: () {
                          Navigator.pushNamed(context, 'page_create_account');
                        },
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
