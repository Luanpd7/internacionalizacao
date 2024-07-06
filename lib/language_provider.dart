import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier{
  String _idiomaSelecionado = 'pt';

  String get idiomaSelecionado => _idiomaSelecionado;

  void selecionarIdioma(String novoIdioma){
    _idiomaSelecionado = novoIdioma;
    notifyListeners();
  }
}