import 'dart:async';

import 'package:flutter/foundation.dart';

abstract class AuthService {
  AuthOptions get options;

  ValueNotifier<AuthUser> get authUserChanged;

  Future<AuthUser> setUserDisplayName(String name);

  Future<AuthUser> currentUser();

  Future<String> currentUserToken();

  Future<void> signOut();

  Future<void> closeAccount(Map<String, String> reauthenticationArgs);

  List<AuthProvider> get authProviders;

  List<LinkableProvider> get linkProviders;

  PhotoUrlProvider get preAuthPhotoProvider;

  PhotoUrlProvider get postAuthPhotoProvider;
}

abstract class LinkableProvider {
  String get providerName;

  String get providerDisplayName;

  Future<AuthUser> linkAccount(Map<String, String> args);
}

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

abstract class AuthUser {
  bool get isValid;

  String get uid;

  String get email;

  bool get isEmailVerified;

  String get displayName;

  String get photoUrl;

  List<AuthUserAccount> get providerAccounts;
}

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

class PhotoUrlInfo {
  PhotoUrlInfo({this.url});

  final String url;
  bool get isValid => url != null && url.length > 0;
}

abstract class PhotoUrlProvider {
  Future<PhotoUrlInfo> emailToPhotoUrl(String email,
      {int size = 100, bool checkIfImageExists});
}

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

  bool canSendForgotEmail;

  bool canVerifyAccount;
  bool canChangePassword;
  bool canChangeEmail;
  bool canLinkAccounts;
  bool canChangeDisplayName;
  bool canDeleteAccount;
  //bool canChangeAvatar;
}
