/*
 * flutter_auth_base
 * Copyright (c) 2018 Lance Johnstone. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'authUserAccount.dart';

///
abstract class AuthUser {
  ///
  bool get isValid;

  ///
  String get uid;

  ///
  String get email;

  ///
  bool get isEmailVerified;

  ///
  String get displayName;

  ///
  String get photoUrl;

  ///
  List<AuthUserAccount> get providerAccounts;
}
