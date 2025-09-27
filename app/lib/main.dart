import 'package:app/Features/splash/presentation/views/splash_view.dart';
import 'package:app/core/Services/Service_locator.dart';
import 'package:app/core/Services/bloc_observer.dart';
import 'package:app/core/Services/on_generate_route.dart';
import 'package:app/core/utils/shared_prefrences.dart';
import 'package:app/firebase_options.dart';
import 'package:app/generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  await SharedPrefs.init();
  setup();
  Bloc.observer = AppBlocObserver();
  runApp(const FruitApp());
}

class FruitApp extends StatelessWidget {
  const FruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, 
        fontFamily: 'Cairo',  
      ),
       localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}