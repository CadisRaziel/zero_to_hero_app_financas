import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/app_widget.dart';
void main() {
  //Para evitar que rotacione a tela !!!
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(MyApp());
    });
}

