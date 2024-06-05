// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

// Package imports:
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(type, email) => "Enter the OTP sent to {${type}} {${email}}";

  static String m1(type) => "Or login with {${type}}";

  static String m2(n) => "Resend after {${n}}s";

  static String m3(email) =>
      "Welcome back {${email}}! Please enter your details.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_kyc_rejected":
            MessageLookupByLibrary.simpleMessage("Account KYC rejected"),
        "account_not_verified":
            MessageLookupByLibrary.simpleMessage("Account not verified"),
        "account_verified":
            MessageLookupByLibrary.simpleMessage("Account verified"),
        "already_have_an_account":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "app_version": MessageLookupByLibrary.simpleMessage("App version"),
        "assistant_model_name": MessageLookupByLibrary.simpleMessage(
            "The virtual AI assistant Salala"),
        "biometric_unlock_successfully": MessageLookupByLibrary.simpleMessage(
            "Biometric unlock successfully!"),
        "changed_successfully": MessageLookupByLibrary.simpleMessage(
            "Password changed successfully"),
        "click_to_resend":
            MessageLookupByLibrary.simpleMessage("Click to resend"),
        "confirmation_code":
            MessageLookupByLibrary.simpleMessage("OTP authentication"),
        "confirmation_code_sent_description": m0,
        "create_an_account":
            MessageLookupByLibrary.simpleMessage("Create an account"),
        "create_successfully":
            MessageLookupByLibrary.simpleMessage("Create successfully"),
        "dont_get_a_code":
            MessageLookupByLibrary.simpleMessage("Don\'t get a code?"),
        "dont_have_an_account":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "enter_otp_title": MessageLookupByLibrary.simpleMessage(
            "Enter OTP sent to your phone"),
        "follow_us": MessageLookupByLibrary.simpleMessage("Follow us"),
        "forgot_password":
            MessageLookupByLibrary.simpleMessage("Forgot password"),
        "frequently_asked_questions":
            MessageLookupByLibrary.simpleMessage("FAQ"),
        "hello": MessageLookupByLibrary.simpleMessage(
            "Hello, i am the virtual AI assistant Salala. How can i help you today?"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "invite_friends":
            MessageLookupByLibrary.simpleMessage("Invite friends"),
        "kyc": MessageLookupByLibrary.simpleMessage("eKYC"),
        "locations": MessageLookupByLibrary.simpleMessage("Locations"),
        "log_in": MessageLookupByLibrary.simpleMessage("Log In"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "login_signup": MessageLookupByLibrary.simpleMessage("Login / Signin"),
        "loging_out": MessageLookupByLibrary.simpleMessage("Signing out..."),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "mainnet": MessageLookupByLibrary.simpleMessage("Mainnet"),
        "my_profile": MessageLookupByLibrary.simpleMessage("My profile"),
        "new_password":
            MessageLookupByLibrary.simpleMessage("Create new password"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "no_credentials_stored":
            MessageLookupByLibrary.simpleMessage("No credentials stored"),
        "notice": MessageLookupByLibrary.simpleMessage("Notice:"),
        "or": m1,
        "pack": MessageLookupByLibrary.simpleMessage("Pack"),
        "permissions": MessageLookupByLibrary.simpleMessage("Permissions"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "please_enter_your_details":
            MessageLookupByLibrary.simpleMessage("Please enter your details"),
        "please_enter_your_email": MessageLookupByLibrary.simpleMessage(
            "Enter the email address you used when you joined and we\'ll send you instructions to reset your password"),
        "please_enter_your_new_password": MessageLookupByLibrary.simpleMessage(
            "Please create your new password"),
        "point": MessageLookupByLibrary.simpleMessage("Point"),
        "privacy_policy": MessageLookupByLibrary.simpleMessage("Policy & Term"),
        "qr_scan": MessageLookupByLibrary.simpleMessage("QR Scan"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "resend_after_n_seconds": m2,
        "resend_otp": MessageLookupByLibrary.simpleMessage("Resend OTP"),
        "reset_password":
            MessageLookupByLibrary.simpleMessage("Reset password"),
        "rewards": MessageLookupByLibrary.simpleMessage("Rewards"),
        "service": MessageLookupByLibrary.simpleMessage("Service"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "show_password": MessageLookupByLibrary.simpleMessage("Show password"),
        "start_chat": MessageLookupByLibrary.simpleMessage("Start a New Chat"),
        "start_training":
            MessageLookupByLibrary.simpleMessage("Start Training AI"),
        "strong_pasword":
            MessageLookupByLibrary.simpleMessage("Strong password:"),
        "strong_pasword_brief": MessageLookupByLibrary.simpleMessage(
            "Use a password of at least 6 characters"),
        "submit_issue": MessageLookupByLibrary.simpleMessage("Submit Issue"),
        "suggest_password": MessageLookupByLibrary.simpleMessage(
            "Choose a strong password and don\'t reuse it for other accounts."),
        "support": MessageLookupByLibrary.simpleMessage("Support"),
        "testnet": MessageLookupByLibrary.simpleMessage("Testnet"),
        "title": MessageLookupByLibrary.simpleMessage(
            "The virtual assistant Salala"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "verify_you": MessageLookupByLibrary.simpleMessage(
            "To continue, first verify it’s you"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Vietnamese"),
        "welcome": MessageLookupByLibrary.simpleMessage("Login Required!"),
        "welcome_back": m3,
        "welcome_title": MessageLookupByLibrary.simpleMessage(
            "Please sign in your acount to discover our features"),
        "white_paper": MessageLookupByLibrary.simpleMessage("Whitepaper"),
        "wrong_credentials":
            MessageLookupByLibrary.simpleMessage("Wrong credentials!"),
        "your_password_has_been_reset": MessageLookupByLibrary.simpleMessage(
            "Your password has been successfully reset. Click below to log in magically."),
        "your_password_has_been_set": MessageLookupByLibrary.simpleMessage(
            "Your account has been successfully . Click below to log in magically.")
      };
}
