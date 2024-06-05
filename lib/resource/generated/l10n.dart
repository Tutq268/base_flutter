// GENERATED CODE - DO NOT MODIFY BY HAND

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';

// Project imports:
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Follow us`
  String get follow_us {
    return Intl.message(
      'Follow us',
      name: 'follow_us',
      desc: '',
      args: [],
    );
  }

  /// `Policy & Term`
  String get privacy_policy {
    return Intl.message(
      'Policy & Term',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get frequently_asked_questions {
    return Intl.message(
      'FAQ',
      name: 'frequently_asked_questions',
      desc: '',
      args: [],
    );
  }

  /// `App version`
  String get app_version {
    return Intl.message(
      'App version',
      name: 'app_version',
      desc: '',
      args: [],
    );
  }

  /// `Account verified`
  String get account_verified {
    return Intl.message(
      'Account verified',
      name: 'account_verified',
      desc: '',
      args: [],
    );
  }

  /// `Account not verified`
  String get account_not_verified {
    return Intl.message(
      'Account not verified',
      name: 'account_not_verified',
      desc: '',
      args: [],
    );
  }

  /// `Account KYC rejected`
  String get account_kyc_rejected {
    return Intl.message(
      'Account KYC rejected',
      name: 'account_kyc_rejected',
      desc: '',
      args: [],
    );
  }

  /// `My profile`
  String get my_profile {
    return Intl.message(
      'My profile',
      name: 'my_profile',
      desc: '',
      args: [],
    );
  }

  /// `Mainnet`
  String get mainnet {
    return Intl.message(
      'Mainnet',
      name: 'mainnet',
      desc: '',
      args: [],
    );
  }

  /// `Testnet`
  String get testnet {
    return Intl.message(
      'Testnet',
      name: 'testnet',
      desc: '',
      args: [],
    );
  }

  /// `Invite friends`
  String get invite_friends {
    return Intl.message(
      'Invite friends',
      name: 'invite_friends',
      desc: '',
      args: [],
    );
  }

  /// `Permissions`
  String get permissions {
    return Intl.message(
      'Permissions',
      name: 'permissions',
      desc: '',
      args: [],
    );
  }

  /// `Rewards`
  String get rewards {
    return Intl.message(
      'Rewards',
      name: 'rewards',
      desc: '',
      args: [],
    );
  }

  /// `Whitepaper`
  String get white_paper {
    return Intl.message(
      'Whitepaper',
      name: 'white_paper',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Start Training AI`
  String get start_training {
    return Intl.message(
      'Start Training AI',
      name: 'start_training',
      desc: '',
      args: [],
    );
  }

  /// `eKYC`
  String get kyc {
    return Intl.message(
      'eKYC',
      name: 'kyc',
      desc: '',
      args: [],
    );
  }

  /// `The virtual assistant Salala`
  String get title {
    return Intl.message(
      'The virtual assistant Salala',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Start a New Chat`
  String get start_chat {
    return Intl.message(
      'Start a New Chat',
      name: 'start_chat',
      desc: '',
      args: [],
    );
  }

  /// `The virtual AI assistant Salala`
  String get assistant_model_name {
    return Intl.message(
      'The virtual AI assistant Salala',
      name: 'assistant_model_name',
      desc: '',
      args: [],
    );
  }

  /// `Hello, i am the virtual AI assistant Salala. How can i help you today?`
  String get hello {
    return Intl.message(
      'Hello, i am the virtual AI assistant Salala. How can i help you today?',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Submit Issue`
  String get submit_issue {
    return Intl.message(
      'Submit Issue',
      name: 'submit_issue',
      desc: '',
      args: [],
    );
  }

  /// `Strong password:`
  String get strong_pasword {
    return Intl.message(
      'Strong password:',
      name: 'strong_pasword',
      desc: '',
      args: [],
    );
  }

  /// `Use a password of at least 6 characters`
  String get strong_pasword_brief {
    return Intl.message(
      'Use a password of at least 6 characters',
      name: 'strong_pasword_brief',
      desc: '',
      args: [],
    );
  }

  /// `Choose a strong password and don't reuse it for other accounts.`
  String get suggest_password {
    return Intl.message(
      'Choose a strong password and don\'t reuse it for other accounts.',
      name: 'suggest_password',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get log_in {
    return Intl.message(
      'Log In',
      name: 'log_in',
      desc: '',
      args: [],
    );
  }

  /// `Login / Signin`
  String get login_signup {
    return Intl.message(
      'Login / Signin',
      name: 'login_signup',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back {{email}}! Please enter your details.`
  String welcome_back(Object email) {
    return Intl.message(
      'Welcome back {$email}! Please enter your details.',
      name: 'welcome_back',
      desc: '',
      args: [email],
    );
  }

  /// `Login Required!`
  String get welcome {
    return Intl.message(
      'Login Required!',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Please sign in your acount to discover our features`
  String get welcome_title {
    return Intl.message(
      'Please sign in your acount to discover our features',
      name: 'welcome_title',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dont_have_an_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Create successfully`
  String get create_successfully {
    return Intl.message(
      'Create successfully',
      name: 'create_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully`
  String get changed_successfully {
    return Intl.message(
      'Password changed successfully',
      name: 'changed_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get create_an_account {
    return Intl.message(
      'Create an account',
      name: 'create_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your details`
  String get please_enter_your_details {
    return Intl.message(
      'Please enter your details',
      name: 'please_enter_your_details',
      desc: '',
      args: [],
    );
  }

  /// `Or login with {{type}}`
  String or(Object type) {
    return Intl.message(
      'Or login with {$type}',
      name: 'or',
      desc: '',
      args: [type],
    );
  }

  /// `OTP authentication`
  String get confirmation_code {
    return Intl.message(
      'OTP authentication',
      name: 'confirmation_code',
      desc: '',
      args: [],
    );
  }

  /// `Enter the OTP sent to {{type}} {{email}}`
  String confirmation_code_sent_description(Object type, Object email) {
    return Intl.message(
      'Enter the OTP sent to {$type} {$email}',
      name: 'confirmation_code_sent_description',
      desc: '',
      args: [type, email],
    );
  }

  /// `Don't get a code?`
  String get dont_get_a_code {
    return Intl.message(
      'Don\'t get a code?',
      name: 'dont_get_a_code',
      desc: '',
      args: [],
    );
  }

  /// `Click to resend`
  String get click_to_resend {
    return Intl.message(
      'Click to resend',
      name: 'click_to_resend',
      desc: '',
      args: [],
    );
  }

  /// `Resend OTP`
  String get resend_otp {
    return Intl.message(
      'Resend OTP',
      name: 'resend_otp',
      desc: '',
      args: [],
    );
  }

  /// `Resend after {{n}}s`
  String resend_after_n_seconds(Object n) {
    return Intl.message(
      'Resend after {$n}s',
      name: 'resend_after_n_seconds',
      desc: '',
      args: [n],
    );
  }

  /// `Enter OTP sent to your phone`
  String get enter_otp_title {
    return Intl.message(
      'Enter OTP sent to your phone',
      name: 'enter_otp_title',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password`
  String get forgot_password {
    return Intl.message(
      'Forgot password',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email address you used when you joined and we'll send you instructions to reset your password`
  String get please_enter_your_email {
    return Intl.message(
      'Enter the email address you used when you joined and we\'ll send you instructions to reset your password',
      name: 'please_enter_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Notice:`
  String get notice {
    return Intl.message(
      'Notice:',
      name: 'notice',
      desc: '',
      args: [],
    );
  }

  /// `Biometric unlock successfully!`
  String get biometric_unlock_successfully {
    return Intl.message(
      'Biometric unlock successfully!',
      name: 'biometric_unlock_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Create new password`
  String get new_password {
    return Intl.message(
      'Create new password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Please create your new password`
  String get please_enter_your_new_password {
    return Intl.message(
      'Please create your new password',
      name: 'please_enter_your_new_password',
      desc: '',
      args: [],
    );
  }

  /// `No credentials stored`
  String get no_credentials_stored {
    return Intl.message(
      'No credentials stored',
      name: 'no_credentials_stored',
      desc: '',
      args: [],
    );
  }

  /// `Wrong credentials!`
  String get wrong_credentials {
    return Intl.message(
      'Wrong credentials!',
      name: 'wrong_credentials',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get reset_password {
    return Intl.message(
      'Reset password',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Your password has been successfully reset. Click below to log in magically.`
  String get your_password_has_been_reset {
    return Intl.message(
      'Your password has been successfully reset. Click below to log in magically.',
      name: 'your_password_has_been_reset',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been successfully . Click below to log in magically.`
  String get your_password_has_been_set {
    return Intl.message(
      'Your account has been successfully . Click below to log in magically.',
      name: 'your_password_has_been_set',
      desc: '',
      args: [],
    );
  }

  /// `QR Scan`
  String get qr_scan {
    return Intl.message(
      'QR Scan',
      name: 'qr_scan',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Locations`
  String get locations {
    return Intl.message(
      'Locations',
      name: 'locations',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `To continue, first verify it’s you`
  String get verify_you {
    return Intl.message(
      'To continue, first verify it’s you',
      name: 'verify_you',
      desc: '',
      args: [],
    );
  }

  /// `Show password`
  String get show_password {
    return Intl.message(
      'Show password',
      name: 'show_password',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Signing out...`
  String get loging_out {
    return Intl.message(
      'Signing out...',
      name: 'loging_out',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Service`
  String get service {
    return Intl.message(
      'Service',
      name: 'service',
      desc: '',
      args: [],
    );
  }

  /// `Pack`
  String get pack {
    return Intl.message(
      'Pack',
      name: 'pack',
      desc: '',
      args: [],
    );
  }

  /// `Point`
  String get point {
    return Intl.message(
      'Point',
      name: 'point',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Vietnamese`
  String get vietnamese {
    return Intl.message(
      'Vietnamese',
      name: 'vietnamese',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
