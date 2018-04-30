class AuthOptions {
  AuthOptions({
    this.canVerifyAccount: true,
    this.canChangePassword: true,
    this.canChangeEmail: true,
    this.canLinkAccounts: true,
    this.canChangeDisplayName: true,
    this.canSendForgotEmail: true,
    this.canDeleteAccount: true,
    //this.canChangeAvatar: false, // would need to upload image, resize and store in cloud storage.
  });

  bool canSendForgotEmail;

  bool canVerifyAccount;
  bool canChangePassword;
  bool canChangeEmail;
  bool canLinkAccounts;
  bool canChangeDisplayName;
  bool canDeleteAccount;
  //bool canChangeAvatar;
}
