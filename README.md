**As dependências no pubspec yaml**


```
flutter pub add intl ou intl: ^0.18.1 (minha versão é essa)
 ```
 ```
flutter_localizations:
  sdk: flutter
 ```
 ```
generate: true
 ```
----------------------------------
**no aqruivo l10n.yaml**
 ```
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
 ```
----------------------------------
**import da classe localization**
 ```
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
 ```
----------------------------------
**O dropDown pra teste**
 ```
 body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Consumer<LanguageProvider>(
              builder: (context, idiomaProvider, child) {
                return DropdownButtonFormField<String>(
                  value: idiomaProvider.idiomaSelecionado,
                  onChanged: (String? novoIdioma) {
                    if (novoIdioma != null) {
                      idiomaProvider.selecionarIdioma(novoIdioma);
                    }
                  },
                  items: <String>['pt', 'en'].map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem<String>(
                      value: value,
                        child: Text(
                          value,
                        ),
                      );
                    }).toList(),
                  );
                  },
                ),
              ),
              Text(AppLocalizations.of(context)!.language),
              Text(AppLocalizations.of(context)!.car),
        ],
      ),
 ```
----------------------------------
**para chamar o getter da classe localizations**
 ```
Text(AppLocalizations.of(context)!.language),
Text(AppLocalizations.of(context)!.car),
 ```






