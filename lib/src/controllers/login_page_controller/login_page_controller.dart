import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:to_do_app_community/src/pages/home.dart';
import 'package:to_do_app_community/src/services/auth_service.dart';
import 'package:to_do_app_community/src/widgets/tdapc_scaffold_message.dart';

part 'login_page_controller.g.dart';

class LoginPageController = LoginPageStore with _$LoginPageController;

abstract class LoginPageStore with Store {
  late BuildContext pageContext;

  @observable
  GlobalKey<FormState> formKey = GlobalKey();

  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController passwordController = TextEditingController();

  @observable
  bool loading = false;

  void init(BuildContext pageContext) {
    this.pageContext = pageContext;

    checkIfLoggedIn();
  }

  /// Check if user is logged in, if so, redirect to home page
  Future checkIfLoggedIn() async {
    loading = true;

    if (await AuthService().checkIfLoggedIn()) {
      Navigator.pushReplacement(
        pageContext,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }

    loading = false;
  }

  /// Validate form and send informations to authenticate user.

  @action
  Future login() async {
    loading = true;

    if (formKey.currentState!.validate()) {
      String email = emailController.text;
      String password = passwordController.text;

      try {
        await AuthService().signInWithEmailAndPassword(email, password);

        navigateToPage(const HomePage());
      } catch (err) {
        showScaffoldMessage('Credenciais inválidas, tente novamente!', Colors.red);
      }
    }

    loading = false;
  }

  /// Navigate to a page.

  void navigateToPage(Widget widget) {
    Navigator.pushAndRemoveUntil(
      pageContext,
      MaterialPageRoute(builder: (pageContext) => widget),
      (route) => false,
    );
  }

  /// Show a scaffold message.

  void showScaffoldMessage(String message, Color backgroundColor) {
    TDAPCScaffoldMessage(pageContext, message, backgroundColor).show();
  }
}
