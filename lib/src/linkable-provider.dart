import 'dart:async';

import 'authUser.dart';

abstract class LinkableProvider {
  String get providerName;

  String get providerDisplayName;

  Future<AuthUser> linkAccount(Map<String, String> args);
}
