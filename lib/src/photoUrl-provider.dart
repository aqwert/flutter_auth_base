import 'dart:async';

import 'photoUrlInfo.dart';

abstract class PhotoUrlProvider {
  Future<PhotoUrlInfo> emailToPhotoUrl(String email,
      {int size = 100, bool checkIfImageExists});
}
