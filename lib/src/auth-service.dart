/*
 * flutter_auth_base
 * Copyright (c) 2018 Lance Johnstone. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'auth-provider.dart';
import 'authOptions.dart';
import 'authUser.dart';
import 'linkable-provider.dart';
import 'photoUrl-provider.dart';

///
abstract class AuthService {
  ///
  AuthOptions get options;

  ///
  ValueNotifier<AuthUser> get authUserChanged;

  ///
  Future<AuthUser> setUserDisplayName(String name);

  ///
  Future<AuthUser> currentUser();

  ///
  Future<String> currentUserToken();

  ///
  Future<AuthUser> refreshUser();

  ///
  Future<void> signOut();

  ///
  Future<void> closeAccount(Map<String, String> reauthenticationArgs);

  ///
  List<AuthProvider> get authProviders;

  ///
  List<LinkableProvider> get linkProviders;

  ///
  PhotoUrlProvider get preAuthPhotoProvider;

  ///
  PhotoUrlProvider get postAuthPhotoProvider;
}
