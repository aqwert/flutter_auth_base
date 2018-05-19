/*
 * flutter_auth_base
 * Copyright (c) 2018 Lance Johnstone. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

///
class AuthRequiredException implements Exception {
  @override
  String toString() {
    return 'Authentication is required';
  }
}
