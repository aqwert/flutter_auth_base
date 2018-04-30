/*
 * flutter_auth_base
 * Copyright (c) 2018 Lance Johnstone. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

class PhotoUrlInfo {
  PhotoUrlInfo({this.url});

  final String url;
  bool get isValid => url != null && url.length > 0;
}
