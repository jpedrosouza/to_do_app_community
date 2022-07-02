import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:to_do_app_community/src/database/controllers/users_controller.dart';
import 'package:to_do_app_community/src/database/models/user.dart'
    as user_model;
import 'package:to_do_app_community/src/pages/login.dart';
import 'package:to_do_app_community/src/services/auth_service.dart';
import 'package:to_do_app_community/src/widgets/tdapc_scaffold_message.dart';
part 'register_page_controller.g.dart';

class RegisterPageController = RegisterPageStore with _$RegisterPageController;

abstract class RegisterPageStore with Store {
  late BuildContext pageContext;

  @observable
  GlobalKey<FormState> formKey = GlobalKey();

  @observable
  TextEditingController fullNameController = TextEditingController();

  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController passwordController = TextEditingController();

  @observable
  TextEditingController confirmPasswordController = TextEditingController();

  @observable
  bool loading = false;

  void init(BuildContext pageContext) {
    this.pageContext = pageContext;
  }

  @action
  Future registerUser() async {
    loading = true;

    if (formKey.currentState!.validate()) {
      if (passwordController.text == confirmPasswordController.text) {
        String fullName = fullNameController.text;
        String email = emailController.text;
        String password = passwordController.text;

        try {
          /// Create user account at FirebaseAuth.

          UserCredential userCredential = await AuthService().createUserWithEmailAndPassword(email, password);

          /// Generate user model with uid received from FirebaseAuth.

          user_model.User createdUser = user_model.User(userCredential.user!.uid, email, fullName);

          /// Save user model at FirebaseFirestore.

          await UsersController().createUser(createdUser);

          navigateToPage(const LoginPage());

          showScaffoldMessage('Conta registrada com sucesso! Faça seu login.', Colors.green);
        } catch (err) {
          showScaffoldMessage('Ocorreu um erro, tente novamente!', Colors.red);
        }
      } else {
        showScaffoldMessage('Informe senhas iguais!', Colors.red);
      }
    }

    loading = false;
  }

  void navigateToPage(Widget widget) {
    Navigator.push(
      pageContext,
      MaterialPageRoute(
        builder: (pageContext) => widget,
      ),
    );
  }

  void showScaffoldMessage(String message, Color backgroundColor) {
    TDAPCScaffoldMessage(pageContext, message, backgroundColor).show();
  }
}
