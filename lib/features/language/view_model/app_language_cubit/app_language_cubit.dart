import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

import 'app_language_state.dart';

class AppLanguageCubit extends Cubit<AppLanguageState> {
  AppLanguageCubit() : super(AppLanguageInitial());

  static AppLanguageCubit get(context) => BlocProvider.of(context);

  final String _langKey = "lang";
  bool isArabicLanguage({required BuildContext context}) =>
      Localizations.localeOf(context).languageCode == 'ar';
   void getAppLanguage() {
    var hasStoredLanguage = GetStorage().hasData(_langKey);
    String localeCode = 'ar';
    if (hasStoredLanguage) {
      localeCode = GetStorage().read(_langKey);
    }
    emit(AppChangeLanguage(
      languageCode: localeCode,
    ));
  }

  void storeAppLanguage({required String languageCode}) {
    GetStorage().write(_langKey, languageCode);
    emit(AppChangeLanguage(languageCode: languageCode));
  }

}
