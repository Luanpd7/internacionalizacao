import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testando/language_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

    );
  }
}