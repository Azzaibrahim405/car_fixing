abstract class AppLanguageState {}

class AppLanguageInitial extends AppLanguageState {}

class AppChangeLanguage extends AppLanguageState {
  final String languageCode;

  AppChangeLanguage({required this.languageCode});
}
