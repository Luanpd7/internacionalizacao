import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testando/language_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:testando/settings_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => LanguageProvider(),
    child: MyApp(),
    )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (BuildContext context, language , _) {  
        var locale = Locale(language.idiomaSelecionado);
      return MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        title: 'Flutter Demo',
        theme: ThemeData(
   
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        locale: locale,
        home: const MyHomePage(title: 'Idioma'),
      );
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

 
  @override
  Widget build(BuildContext context) {
    
  
    return SettingsScreen();
  }
}