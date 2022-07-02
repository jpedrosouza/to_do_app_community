import 'package:flutter/material.dart';
import 'package:to_do_app_community/src/widgets/tdapc_button.dart';
import 'package:to_do_app_community/src/widgets/tdapc_text_input.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Faça seu cadastro!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: form(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget form() {
    return Form(
      child: Column(
        children: [
          TDAPCTextInput(
            'Nome completo',
            false,
            width: MediaQuery.of(context).size.width * 0.8,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TDAPCTextInput(
              'Email',
              false,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TDAPCTextInput(
              'Senha',
              true,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TDAPCTextInput(
              'Confirme a senha',
              true,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TDAPCButton(
              'Registre',
              const Color(0XFFBD8ECD),
              () {},
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Já tem uma conta? Entre'),
            ),
          )
        ],
      ),
    );
  }
}
