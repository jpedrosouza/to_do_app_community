// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageController on HomePageStore, Store {
  late final _$loadingAtom =
      Atom(name: 'HomePageStore.loading', context: context);

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

  late final _$getDataAsyncAction =
      AsyncAction('HomePageStore.getData', context: context);

  @override
  Future<dynamic> getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
