import 'package:flutter/material.dart';
import 'package:zero_to_hero/modules/login/pages/recovery_password/recovery_password_controller.dart';
import 'package:zero_to_hero/modules/login/utils/login_validators.dart';
import 'package:zero_to_hero/modules/login/widgets/button_elevated_disable_widget.dart';
import 'package:zero_to_hero/modules/login/widgets/button_elevated_enabled_widget.dart';
import 'package:zero_to_hero/modules/login/widgets/input_text_email_widget.dart';
import 'package:zero_to_hero/shared/theme/app_images.dart';
import 'package:zero_to_hero/shared/theme/app_text_Style.dart';

class RecoveryPasswordPage extends StatefulWidget {
  const RecoveryPasswordPage({ Key? key }) : super(key: key);

  @override
  _RecoveryPasswordPageState createState() => _RecoveryPasswordPageState();
}

class _RecoveryPasswordPageState extends State<RecoveryPasswordPage> {
  final controller = RecoveryPasswordController();

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
                child: Image.asset(AppImages.logoLostPassword, fit: BoxFit.fitHeight),
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
                        'Recuperando a senha',
                        style: TextStyles.titleHome,
                      ),
                      SizedBox(height: 30,),
                      Text(
                        'Enviaremos para seu email um acesso para recuperar a senha',
                        style: TextStyles.titleHome,
                      ),
                      SizedBox(height: 25),
                      InputTextEmailWidget(
                        onChange: (email) =>
                            controller.onChangedAndValidate(email: email),
                        onValidate: LoginValidators.email,
                        label: 'Email:',
                      ),
                      SizedBox(
                        height: 20,
                      ),                      
                      ValueListenableBuilder<bool>(
                        valueListenable: controller.enabledButtonNotifier,
                        builder: (context, enabled, widget) => enabled
                            ? ElevatedButtonEnabledWidget(
                                voidCallback: () {
                                  Navigator.pushNamed(context, 'page_login');
                                },
                                label: 'Enviar Email',
                              )
                            : ElevatedButtonDisabledWidget(
                                label: 'Enviar Email',
                              ),
                      ),
                      SizedBox(
                        height: 10,
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