import 'package:car_fixing/core/router/app_router.dart';
import 'package:car_fixing/core/theme/main_text_styles.dart';
import 'package:flutter/material.dart';

import '../theme/main_colors.dart';
import 'appbar_cusom_icon.dart';

class WidgetAppbar extends AppBar {
  WidgetAppbar(
      {super.key,
      List<Widget>? actions,
      String? title,
      Widget? titleWidget,
      Widget? leadingWidget,
      bool centerTitle = true,
      required BuildContext context,
      PreferredSizeWidget? bottom})
      : super(
          backgroundColor: MainColors.background,
          actions: actions,
          bottom: bottom,
          centerTitle: centerTitle,
          leading: leadingWidget ??
              Visibility(
                visible: ModalRoute.of(context)!.canPop,
                child: AppBarCustomIcon(
                  onTap: () => navKey.currentState?.pop(),
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: MainColors.primaryColor,
                  ),
                ),
              ),
          title: titleWidget ??
              Text(
                title ?? '',
                style: MainTextStyle.boldTextStyle(
                  fontSize: 17,
                  color: MainColors.blackText,
                ),
              ),
        );
}
