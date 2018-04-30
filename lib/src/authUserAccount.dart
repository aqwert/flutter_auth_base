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
