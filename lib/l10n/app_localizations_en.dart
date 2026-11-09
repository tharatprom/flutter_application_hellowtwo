// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'My Application';

  @override
  String get hello => 'Hello';

  @override
  String get welcome => 'Welcome to Flutter';

  @override
  String get message => 'Hello, how are you?';

  @override
  String get login => 'Login';

  @override
  String get logout => 'Logout';

  @override
  String get settings => 'Settings';
}
