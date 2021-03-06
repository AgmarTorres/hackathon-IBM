import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_life/app/app_controller.dart';
import 'package:test_life/app/app_widget.dart';
import 'package:test_life/app/modules/chat_bot/chat_bot_controller.dart';
import 'package:test_life/app/modules/find_test/find_test_controller.dart';
import 'package:test_life/app/modules/home/home_module.dart';
import 'package:test_life/app/modules/marcar_teste/marcar_teste_controller.dart';
import 'package:test_life/app/modules/meus_testes/meus_testes_controller.dart';
import 'package:test_life/app/modules/meus_testes/meus_testes_page.dart';
import 'package:test_life/app/modules/orientacoes/orientacoes_controller.dart';
import 'package:test_life/app/modules/perfil/perfil_controller.dart';
import 'package:test_life/app/modules/root/root_controller.dart';
import 'package:test_life/app/modules/root/root_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MeusTestesController()),
        Bind((i) => MarcarTesteController()),
        Bind((i) => OrientacoesController()),
        Bind((i) => RootController()),
        Bind((i) => FindTestController()),
        Bind((i) => ChatBotController()),
        Bind((i) => PerfilController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: RootModule()),
        Router('/home', module: HomeModule()),
        Router('/meus-testes', child: (_, args) => MeusTestesPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
