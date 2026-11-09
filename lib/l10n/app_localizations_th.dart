// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'แอปพลิเคชันของฉัน';

  @override
  String get hello => 'สวัสดี';

  @override
  String get welcome => 'ยินดีต้อนรับสู่ Flutter';

  @override
  String get message => 'สวัสดี คุณสบายดีไหม?';

  @override
  String get login => 'เข้าสู่ระบบ';

  @override
  String get logout => 'ออกจากระบบ';

  @override
  String get settings => 'ตั้งค่า';
}
