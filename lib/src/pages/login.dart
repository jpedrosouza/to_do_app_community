import 'package:flutter/material.dart';
import 'package:to_do_app_community/src/controllers/login_page_controller/login_page_controller.dart';
import 'package:to_do_app_community/src/pages/register.dart';
import 'package:to_do_app_community/src/widgets/tdapc_button.dart';
import 'package:to_do_app_community/src/widgets/tdapc_text_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginPageController();

  @override
  void initState() {
    super.initState();

    controller.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Bem Vindo!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: form(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget form() {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          TDAPCTextInput(
            'Email',
            false,
            width: MediaQuery.of(context).size.width * 0.8,
            textInputType: TextInputType.emailAddress,
            controller: controller.emailController,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TDAPCTextInput(
              'Senha',
              true,
              width: MediaQuery.of(context).size.width * 0.8,
              textInputType: TextInputType.visiblePassword,
              controller: controller.passwordController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: TDAPCButton(
              'Login',
              const Color(0XFFBD8ECD),
              () => controller.login(),
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegisterPage(),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Não possui conta? Criar uma!'),
            ),
          )
        ],
      ),
    );
  }
}
