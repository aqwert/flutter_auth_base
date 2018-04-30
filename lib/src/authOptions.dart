/*
 * flutter_auth_base
 * Copyright (c) 2018 Lance Johnstone. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

///
class AuthOptions {
  AuthOptions({
    this.canVerifyAccount: true,
    this.canChangePassword: true,
    this.canChangeEmail: true,
    this.canLinkAccounts: true,
    this.canChangeDisplayName: true,
    this.canSendForgotEmail: true,
    this.canDeleteAccount: true,
    //this.canChangeAvatar: false, // would need to upload image, resize and store in cloud storage.
  });

  ///
  final bool canSendForgotEmail;

  ///
  final bool canVerifyAccount;

  ///
  final bool canChangePassword;

  ///
  final bool canChangeEmail;

  ///
  final bool canLinkAccounts;

  ///
  final bool canChangeDisplayName;

  ///
  final bool canDeleteAccount;

  //final bool canChangeAvatar;
}
