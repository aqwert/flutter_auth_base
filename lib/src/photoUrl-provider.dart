/*
 * flutter_auth_base
 * Copyright (c) 2018 Lance Johnstone. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'dart:async';

import 'photoUrlInfo.dart';

abstract class PhotoUrlProvider {
  Future<PhotoUrlInfo> emailToPhotoUrl(String email,
      {int size = 100, bool checkIfImageExists});
}
