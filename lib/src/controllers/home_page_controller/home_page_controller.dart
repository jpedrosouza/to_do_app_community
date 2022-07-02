import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:to_do_app_community/src/database/controllers/users_controller.dart';
import 'package:to_do_app_community/src/database/models/user.dart';
import 'package:to_do_app_community/src/services/auth_service.dart';
part 'home_page_controller.g.dart';

class HomePageController = HomePageStore with _$HomePageController;

abstract class HomePageStore with Store {
  late BuildContext pageContext;

  late User userData;

  late String userId;

  @observable
  bool loading = true;

  /// Init the controller.

  void init(BuildContext pageContext)  {
    this.pageContext = pageContext;
  }

  /// Get the user data.

  @action
  Future getData() async {
    loading = true;

    userId = await AuthService().getUserId();
    userData = await UsersController().getUser(userId);

    loading = false;
  }
}