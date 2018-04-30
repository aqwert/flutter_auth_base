/*
 * flutter_auth_base
 * Copyright (c) 2018 Lance Johnstone. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

abstract class AuthUserAccount {
  AuthUserAccount({
    this.canChangeEmail: true,
    this.canChangeDisplayName: true,
    this.canChangePassword: true,
  });
  String get providerName;
  String get email;
  String get displayName;
  String get photoUrl;

  final bool canChangeEmail;
  final bool canChangeDisplayName;
  final bool canChangePassword;
}
