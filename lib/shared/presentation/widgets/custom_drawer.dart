import 'package:cat_catcher_app/core/constants/placeholders.dart';
import 'package:cat_catcher_app/core/extensions/locale_extension.dart';
import 'package:cat_catcher_app/core/extensions/theme_extension.dart';
import 'package:cat_catcher_app/core/theme/theme_provider.dart';
import 'package:cat_catcher_app/l10n/locale_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends ConsumerWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildDrawerHeader(context),
          _buildChangeThemeItem(context, ref),
          _buildLanguageItem(context, ref),
        ],
      ),
    );
  }

  _buildDrawerHeader(BuildContext context) {
    return DrawerHeader(
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/logo.svg',
            colorFilter: ColorFilter.mode(
              context.inverseSurfaceColor,
              BlendMode.srcIn,
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Text(
            context.landingScreenTitle,
            style: TextStyle(fontSize: 30.sp),
          )
        ],
      ),
    );
  }

  _buildChangeThemeItem(BuildContext context, WidgetRef ref) {
    return ExpansionTile(
      title: Text(context.changeTheme),
      //trailing: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
      children: [
        _buildThemeOption(context, ref, ThemeType.light),
        _buildThemeOption(context, ref, ThemeType.dark),
        _buildThemeOption(context, ref, ThemeType.brand),
      ],
    );
  }

  Widget _buildThemeOption(
    BuildContext context,
    WidgetRef ref,
    ThemeType theme,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: ListTile(
        leading: Text(Placeholders.drawerItemPLaceHolder,
            style: TextStyle(fontSize: 20)),
        title: Text(theme.name),
        onTap: () {
          ref.read(themeProvider.notifier).setTheme(theme, save: true);
        },
      ),
    );
  }

  _buildLanguageItem(BuildContext context, WidgetRef ref) {
    return ExpansionTile(
      title: Text(context.language),
      //trailing: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
      children: [
        _buildLanguageOption(context, ref, Locale('en')),
        _buildLanguageOption(context, ref, Locale('es')),
      ],
    );
  }

  Widget _buildLanguageOption(
    BuildContext context,
    WidgetRef ref,
    Locale locale,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: ListTile(
        leading: Text(Placeholders.drawerItemPLaceHolder,
            style: TextStyle(fontSize: 20)),
        title: Text(
          locale.languageCode == 'es' ? context.spanish : context.english,
        ),
        onTap: () {
          ref.read(localeProvider.notifier).setLocale(locale, save: true);
        },
      ),
    );
  }
}
