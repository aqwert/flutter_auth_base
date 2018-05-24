/*
 * flutter_auth_base
 * Copyright (c) 2018 Lance Johnstone. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

///
class UserAcceptanceRequiredException implements Exception {
  final Map<String, String> data;

  const UserAcceptanceRequiredException(this.data);
}
