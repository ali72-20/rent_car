import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rent_car/core/di/di.dart';
import 'package:rent_car/core/utilities/localization/l10n.dart';
import 'package:rent_car/firebase_options.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: L10n.all,
      locale: const Locale('en'),
      localizationsDelegates: const[

      ],
      home: Scaffold(
        body: Center(
          child: Text(
            AppLocalizationa.
          ),
        ),
      ),
    );
  }
}



