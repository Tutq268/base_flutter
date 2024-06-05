// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
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
  String get localeName => 'vi';

  static String m0(type, email) => "Nhập OTP gửi tới {${type}} {${email}}";

  static String m1(type) => "Hoặc đăng nhập bằng {${type}}";

  static String m2(n) => "Gửi lại sau {${n}}s";

  static String m3(email) =>
      "Chào mừng trở lại {${email}}! Hãy nhập các trường thông tin để đăng nhập.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_kyc_rejected":
            MessageLookupByLibrary.simpleMessage("KYC từ chối tài khoản"),
        "account_not_verified":
            MessageLookupByLibrary.simpleMessage("Tài khoản chưa xác thực"),
        "account_verified":
            MessageLookupByLibrary.simpleMessage("Tài khoản đã xác thực"),
        "already_have_an_account":
            MessageLookupByLibrary.simpleMessage("Đã có tài khoản?"),
        "app_version":
            MessageLookupByLibrary.simpleMessage("Phiên bản ứng dụng"),
        "assistant_model_name":
            MessageLookupByLibrary.simpleMessage("Trợ lí ảo Salala"),
        "biometric_unlock_successfully": MessageLookupByLibrary.simpleMessage(
            "Mở khóa tính năng sinh trắc học thành công!"),
        "changed_successfully": MessageLookupByLibrary.simpleMessage(
            "Thay đổi mật khẩu thành công"),
        "click_to_resend":
            MessageLookupByLibrary.simpleMessage("Click để gửi lại"),
        "confirmation_code":
            MessageLookupByLibrary.simpleMessage("Mã xác thực OTP"),
        "confirmation_code_sent_description": m0,
        "create_an_account":
            MessageLookupByLibrary.simpleMessage("Tạo tài khoản"),
        "create_successfully":
            MessageLookupByLibrary.simpleMessage("Thành công"),
        "dont_get_a_code":
            MessageLookupByLibrary.simpleMessage("Chưa nhận được mã?"),
        "dont_have_an_account":
            MessageLookupByLibrary.simpleMessage("Chưa có tài khoản?"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "english": MessageLookupByLibrary.simpleMessage("Tiếng Anh"),
        "enter_otp_title": MessageLookupByLibrary.simpleMessage(
            "Nhập OTP được gửi về số của bạn"),
        "follow_us":
            MessageLookupByLibrary.simpleMessage("Theo dõi chúng tôi"),
        "forgot_password":
            MessageLookupByLibrary.simpleMessage("Quên mật khẩu"),
        "frequently_asked_questions":
            MessageLookupByLibrary.simpleMessage("Câu hỏi thường gặp"),
        "hello": MessageLookupByLibrary.simpleMessage(
            "Xin chào, tôi là trợ lý trí tuệ nhân tạo Salala. Tôi có thể giúp gì cho bạn hôm nay?"),
        "home": MessageLookupByLibrary.simpleMessage("Trang chủ"),
        "invite_friends":
            MessageLookupByLibrary.simpleMessage("Giới thiệu bạn bè"),
        "kyc": MessageLookupByLibrary.simpleMessage("Xác minh"),
        "locations": MessageLookupByLibrary.simpleMessage("Locations"),
        "log_in": MessageLookupByLibrary.simpleMessage("Đăng nhập"),
        "login": MessageLookupByLibrary.simpleMessage("Đăng nhập"),
        "login_signup":
            MessageLookupByLibrary.simpleMessage("Đăng nhập / Đăng ký"),
        "loging_out": MessageLookupByLibrary.simpleMessage("Đang đăng xuất..."),
        "logout": MessageLookupByLibrary.simpleMessage("Đăng xuất"),
        "mainnet": MessageLookupByLibrary.simpleMessage("Mainnet"),
        "my_profile": MessageLookupByLibrary.simpleMessage("Hồ sơ cá nhân"),
        "new_password": MessageLookupByLibrary.simpleMessage("Mật khẩu mới"),
        "next": MessageLookupByLibrary.simpleMessage("Tiếp"),
        "notice": MessageLookupByLibrary.simpleMessage("Thông báo"),
        "or": m1,
        "pack": MessageLookupByLibrary.simpleMessage("Gói Cước"),
        "permissions": MessageLookupByLibrary.simpleMessage("Các vai trò"),
        "phone": MessageLookupByLibrary.simpleMessage("Số điện thoại"),
        "please_enter_your_details": MessageLookupByLibrary.simpleMessage(
            "Hãy nhập các trường thông tin để đăng ký."),
        "please_enter_your_email": MessageLookupByLibrary.simpleMessage(
            "Hãy nhập địa chỉ email của bạn, chúng tôi sẽ hướng dẫn bạn thay đổi mật khẩu"),
        "please_enter_your_new_password":
            MessageLookupByLibrary.simpleMessage("Hãy tạo mật khẩu mới "),
        "point": MessageLookupByLibrary.simpleMessage("Tích điểm"),
        "privacy_policy": MessageLookupByLibrary.simpleMessage(
            "Chính sách và điều khoản"),
        "qr_scan": MessageLookupByLibrary.simpleMessage("QR Scan"),
        "register": MessageLookupByLibrary.simpleMessage("Đăng ký"),
        "resend_after_n_seconds": m2,
        "resend_otp": MessageLookupByLibrary.simpleMessage("Gửi lại OTP"),
        "reset_password":
            MessageLookupByLibrary.simpleMessage("Thay đổi mật khẩu"),
        "rewards": MessageLookupByLibrary.simpleMessage("Phần thưởng"),
        "service": MessageLookupByLibrary.simpleMessage("Dịch vụ"),
        "settings": MessageLookupByLibrary.simpleMessage("Cài đặt"),
        "show_password": MessageLookupByLibrary.simpleMessage("Hiện mật khẩu"),
        "start_chat":
            MessageLookupByLibrary.simpleMessage("Bắt đầu cuộc trò chuyện"),
        "start_training": MessageLookupByLibrary.simpleMessage("Train AI thôi"),
        "strong_pasword":
            MessageLookupByLibrary.simpleMessage("Mật khẩu mạnh:"),
        "strong_pasword_brief": MessageLookupByLibrary.simpleMessage(
            "Use a password of at least 6 characters"),
        "submit_issue": MessageLookupByLibrary.simpleMessage("Gửi vấn đề"),
        "suggest_password": MessageLookupByLibrary.simpleMessage(
            "Hãy nhập mật khẩu mạnh và không nên sử dụng chung với các tài khoản khác."),
        "support": MessageLookupByLibrary.simpleMessage("Hỗ Trợ"),
        "testnet": MessageLookupByLibrary.simpleMessage("Testnet"),
        "title": MessageLookupByLibrary.simpleMessage("Trợ lí ảo Salala"),
        "username": MessageLookupByLibrary.simpleMessage("Tên người dùng"),
        "verify_you": MessageLookupByLibrary.simpleMessage(
            "Hãy nhập lại mật khẩu để xác thực chính là bạn."),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Tiếng Việt"),
        "welcome": MessageLookupByLibrary.simpleMessage("Vui lòng đăng nhập!"),
        "welcome_back": m3,
        "welcome_title": MessageLookupByLibrary.simpleMessage(
            "Vui lòng đăng nhập để có thể trải nghiệm các tính năng"),
        "white_paper": MessageLookupByLibrary.simpleMessage("Sách trắng"),
        "wrong_credentials": MessageLookupByLibrary.simpleMessage(
            "Xác thực mật khẩu không chính xác!"),
        "your_password_has_been_reset": MessageLookupByLibrary.simpleMessage(
            "Mật khẩu của bạn đã được thay đổi thành công. Click vào nút bên dưới để đăng nhập ngay."),
        "your_password_has_been_set": MessageLookupByLibrary.simpleMessage(
            "Tài khoản của bạn đã được tạo thành công. Click vào nút bên dưới để trải nghiệm ngay.")
      };
}
