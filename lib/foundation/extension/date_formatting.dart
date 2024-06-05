// Package imports:
import 'package:intl/intl.dart';

extension DateFormatting on DateTime {
  String tohhmmddMMyyyy() {
    final f = DateFormat('hh:mm dd/MM/yyyy');
    var dateUtc = toUtc();
    var dateLocal = dateUtc.toLocal();
    return f.format(dateLocal);
  }

  String toHHmm() {
    final f = DateFormat('HH:mm');
    var dateUtc = toUtc();
    var dateLocal = dateUtc.toLocal();
    return f.format(dateLocal);
  }

  String toddMMyyyy() {
    final f = DateFormat('dd/MM/yyyy');
    var dateUtc = toUtc();
    var dateLocal = dateUtc.toLocal();
    return f.format(dateLocal);
  }

  String toyyyy() {
    final f = DateFormat('yyyy');
    return f.format(this);
  }

  String toLocalTime() {
    final f = DateFormat('dd/MM/yyyy');
    var dateUtc = toUtc();
    var dateLocal = dateUtc.toLocal();
    return f.format(dateLocal);
  }

  String toEEEMMMd() {
    // final f = DateFormat('EEE, MMM d');
    final f = DateFormat.MMMEd('vi_VN');
    var dateUtc = toUtc();
    var dateLocal = dateUtc.toLocal();
    return f.format(dateLocal);
  }

  String toEEEMMMdY() {
    // final f = DateFormat('EEE, MMM d');
    final f = DateFormat.yMMMEd('vi_VN');
    var dateUtc = toUtc();
    var dateLocal = dateUtc.toLocal();
    return f.format(dateLocal);
  }

  String toFullDay() {
    final f = DateFormat('EEEE, d MMM, yyyy');
    return f.format(this);
  }

  String toFullDay2() {
    final f = DateFormat('dd/MM/yyyy HH:mm');
    return f.format(this);
  }

  String toDD() {
    final f = DateFormat('dd');
    return f.format(toUtc());
  }

  String todd() {
    final f = DateFormat('dd');
    return f.format(this);
  }

  String toHH() {
    final f = DateFormat('HH');
    return f.format(this);
  }

  String toMM() {
    final f = DateFormat("MM");
    return f.format(toUtc());
  }
}
