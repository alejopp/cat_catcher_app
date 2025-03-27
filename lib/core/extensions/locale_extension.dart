import 'package:cat_catcher_app/core/constants/app_strings.dart';
import 'package:cat_catcher_app/l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';

extension LocaleExtension on BuildContext {
  String get landingScreenTitle =>
      AppLocalizations.of(this).translate(AppStrings.landingScreenTitle.name);

  String get intelligence =>
      AppLocalizations.of(this).translate(AppStrings.intelligence.name);

  String get adaptability =>
      AppLocalizations.of(this).translate(AppStrings.adaptability.name);

  String get childFriendly =>
      AppLocalizations.of(this).translate(AppStrings.childFriendly.name);

  String get socialNeeds =>
      AppLocalizations.of(this).translate(AppStrings.socialNeeds.name);

  String get dogFriendly =>
      AppLocalizations.of(this).translate(AppStrings.dogFriendly.name);

  String get originCountry =>
      AppLocalizations.of(this).translate(AppStrings.originCountry.name);

  String get more => AppLocalizations.of(this).translate(AppStrings.more.name);

  String get searchBreadHint =>
      AppLocalizations.of(this).translate(AppStrings.searchBreadHint.name);

  String get connected =>
      AppLocalizations.of(this).translate(AppStrings.connected.name);

  String get noConnected =>
      AppLocalizations.of(this).translate(AppStrings.noConnected.name);

  String get changeTheme =>
      AppLocalizations.of(this).translate(AppStrings.changeTheme.name);

  String get language =>
      AppLocalizations.of(this).translate(AppStrings.language.name);

  String get english =>
      AppLocalizations.of(this).translate(AppStrings.english.name);

  String get spanish =>
      AppLocalizations.of(this).translate(AppStrings.spanish.name);

  String get theme =>
      AppLocalizations.of(this).translate(AppStrings.theme.name);

  String get webLinkLabel =>
      AppLocalizations.of(this).translate(AppStrings.webLinkLabel.name);

  String tr(String key, {Map<String, String>? args}) {
    return AppLocalizations.of(this).translate(key, args: args);
  }
}
