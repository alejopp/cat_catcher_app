import 'package:cat_catcher_app/core/constants/app_strings.dart';
import 'package:cat_catcher_app/core/extensions/context_extension.dart';
import 'package:cat_catcher_app/core/theme/theme_provider.dart';
import 'package:cat_catcher_app/shared/presentation/providers/drawer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends ConsumerWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isExpanded = ref.watch(drawerStateProvider);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
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
                  AppStrings.landingScrrenTitle,
                  style: TextStyle(fontSize: 30.sp),
                )
              ],
            ),
          ),
          ListTile(
            title: Text(AppStrings.changeTheme),
            trailing: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
            onTap: () {
              ref.read(drawerStateProvider.notifier).state = !isExpanded;
            },
          ),
          if (isExpanded) ...[
            _buildThemeOption(context, ref, ThemeType.light),
            _buildThemeOption(context, ref, ThemeType.dark),
            _buildThemeOption(context, ref, ThemeType.brand),
          ],
        ],
      ),
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
        leading:
            Text(AppStrings.drawerItemSymbol, style: TextStyle(fontSize: 20)),
        title: Text(theme.name),
        onTap: () {
          ref.read(themeProvider.notifier).setTheme(theme);
        },
      ),
    );
  }
}
