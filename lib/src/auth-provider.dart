import 'dart:async';

import 'authUser.dart';

abstract class AuthProvider {
  String get providerName;

  String get providerDisplayName;

  Future<AuthUser> create(Map<String, String> args);

  Future<AuthUser> signIn(Map<String, String> args);

  Future<AuthUser> sendPasswordReset(Map<String, String> args);

  Future<AuthUser> changePassword(Map<String, String> args);

  Future<AuthUser> changePrimaryIdentifier(Map<String, String> args);

  Future<AuthUser> sendVerification(Map<String, String> args);
}
