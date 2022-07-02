// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterPageController on RegisterPageStore, Store {
  late final _$formKeyAtom =
      Atom(name: 'RegisterPageStore.formKey', context: context);

  @override
  GlobalKey<FormState> get formKey {
    _$formKeyAtom.reportRead();
    return super.formKey;
  }

  @override
  set formKey(GlobalKey<FormState> value) {
    _$formKeyAtom.reportWrite(value, super.formKey, () {
      super.formKey = value;
    });
  }

  late final _$fullNameControllerAtom =
      Atom(name: 'RegisterPageStore.fullNameController', context: context);

  @override
  TextEditingController get fullNameController {
    _$fullNameControllerAtom.reportRead();
    return super.fullNameController;
  }

  @override
  set fullNameController(TextEditingController value) {
    _$fullNameControllerAtom.reportWrite(value, super.fullNameController, () {
      super.fullNameController = value;
    });
  }

  late final _$emailControllerAtom =
      Atom(name: 'RegisterPageStore.emailController', context: context);

  @override
  TextEditingController get emailController {
    _$emailControllerAtom.reportRead();
    return super.emailController;
  }

  @override
  set emailController(TextEditingController value) {
    _$emailControllerAtom.reportWrite(value, super.emailController, () {
      super.emailController = value;
    });
  }

  late final _$passwordControllerAtom =
      Atom(name: 'RegisterPageStore.passwordController', context: context);

  @override
  TextEditingController get passwordController {
    _$passwordControllerAtom.reportRead();
    return super.passwordController;
  }

  @override
  set passwordController(TextEditingController value) {
    _$passwordControllerAtom.reportWrite(value, super.passwordController, () {
      super.passwordController = value;
    });
  }

  late final _$confirmPasswordControllerAtom = Atom(
      name: 'RegisterPageStore.confirmPasswordController', context: context);

  @override
  TextEditingController get confirmPasswordController {
    _$confirmPasswordControllerAtom.reportRead();
    return super.confirmPasswordController;
  }

  @override
  set confirmPasswordController(TextEditingController value) {
    _$confirmPasswordControllerAtom
        .reportWrite(value, super.confirmPasswordController, () {
      super.confirmPasswordController = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: 'RegisterPageStore.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$registerUserAsyncAction =
      AsyncAction('RegisterPageStore.registerUser', context: context);

  @override
  Future<dynamic> registerUser() {
    return _$registerUserAsyncAction.run(() => super.registerUser());
  }

  @override
  String toString() {
    return '''
formKey: ${formKey},
fullNameController: ${fullNameController},
emailController: ${emailController},
passwordController: ${passwordController},
confirmPasswordController: ${confirmPasswordController},
loading: ${loading}
    ''';
  }
}
