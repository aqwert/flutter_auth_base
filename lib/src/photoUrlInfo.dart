class PhotoUrlInfo {
  PhotoUrlInfo({this.url});

  final String url;
  bool get isValid => url != null && url.length > 0;
}
