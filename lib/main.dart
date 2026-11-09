import 'package:flutter/material.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');

  void _swapLanguage() {
    setState(() {
      _locale = _locale.languageCode == 'en'
          ? const Locale('th')
          : const Locale('en');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      localizationsDelegates:
          AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      locale: _locale,

      onGenerateTitle: (context) =>
          AppLocalizations.of(context)!.appTitle,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
      ),

      home: HomePage(
        onSwapLanguage: _swapLanguage,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.onSwapLanguage,
  });

  final VoidCallback onSwapLanguage;

  @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context)!;
    final isThai =
        Localizations.localeOf(context).languageCode == 'th';

    return Scaffold(
      appBar: AppBar(
        title: Text(text.appTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text.hello,
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 12),
            Text(text.welcome),
            const SizedBox(height: 12),
            Text(text.message),
            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {},
              child: Text(text.login),
            ),

            TextButton(
              onPressed: () {},
              child: Text(text.settings),
            ),

            const SizedBox(height: 24),

            // ปุ่มสลับภาษา
            ElevatedButton.icon(
              onPressed: onSwapLanguage,
              icon: const Icon(Icons.language),
              label: Text(
                isThai ? 'English' : 'ภาษาไทย',
              ),
            ),
          ],
        ),
      ),
    );
  }
}