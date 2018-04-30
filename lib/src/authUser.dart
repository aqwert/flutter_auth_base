import 'authUserAccount.dart';

abstract class AuthUser {
  bool get isValid;

  String get uid;

  String get email;

  bool get isEmailVerified;

  String get displayName;

  String get photoUrl;

  List<AuthUserAccount> get providerAccounts;
}
