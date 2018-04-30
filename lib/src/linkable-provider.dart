/*
 * flutter_auth_base
 * Copyright (c) 2018 Lance Johnstone. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'dart:async';

import 'authUser.dart';

abstract class LinkableProvider {
  String get providerName;

  String get providerDisplayName;

  Future<AuthUser> linkAccount(Map<String, String> args);
}
