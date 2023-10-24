import 'package:car_fixing/core/extensions/context_extension.dart';
import 'package:car_fixing/core/extensions/sizes.dart';
import 'package:car_fixing/core/theme/main_colors.dart';
import 'package:car_fixing/features/home/view/widget/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:pinput/pinput.dart';

import '../../../core/components/appbar_cusom_icon.dart';
import '../../../core/components/search_container.dart';
import '../../../core/components/widget_appbar.dart';
import '../../../core/router/route_paths.dart';
import '../../../core/theme/item_padding.dart';
import '../../../core/theme/main_text_styles.dart';
import '../../language/view_model/app_language_cubit/app_language_cubit.dart';
import '../../language/view_model/app_language_cubit/app_language_state.dart';
import '../view_model/home_cubit/home_cubit.dart';
import 'widget/carousel_slider_home.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {



  @override
  Widget build(BuildContext context) {
    var translate=context.loc!;
    List<String> titles = [
      translate.oil,
      translate.motoCar  ,
      translate.dashboard,
     translate.washing
    ];
    List<String> images = [
      'images/download.jpeg',
      'images/1.jpeg',
      'images/download (1).jpeg',
      'images/download (2).jpeg'
    ];
    // LoginData loginData = LoginData.fromJson(
    //   jsonDecode(
    //     GetStorage().read(
    //       StorageEnum.loginModel.name,
    //     ),
    //   ),
    // );
    // var translate = context.loc;
    var cubit = HomeCubit.get(context);
    return Scaffold(
      backgroundColor: MainColors.background,
      appBar: WidgetAppbar(
        context: context,
        leadingWidget: AppBarCustomIcon(
          onTap: () {
            Navigator.pushNamed(context, RoutePaths.settingsPath);
          },
          icon: const Icon(
            Icons.person,
            color: MainColors.primaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: AppBarCustomIcon(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) =>
                      BlocBuilder<AppLanguageCubit, AppLanguageState>(
                    builder: (context, state) {
                      var appLangCubit = context.read<AppLanguageCubit>();
                      if (state is! AppChangeLanguage) {
                        return const SizedBox();
                      }
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        content: SizedBox(
                          height: 130.h,
                          width: 150.w,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    appLangCubit.storeAppLanguage(
                                        languageCode: 'ar');
                                    Navigator.pop(context);
                                  },
                                  child: IgnorePointer(
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          autofocus: true,
                                          splashRadius: 20.r,
                                          tristate: true,
                                          shape: CircleBorder(
                                              side: BorderSide(width: 2.w)),
                                          value: appLangCubit.isArabicLanguage(
                                              context: context),
                                          activeColor: MainColors.primaryColor,
                                          onChanged: (value) {},
                                        ),
                                        Text(
                                          context.loc!.arabicLang,
                                          style: MainTextStyle.boldTextStyle(
                                              fontSize: 20,
                                              color: MainColors.primaryColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    appLangCubit.storeAppLanguage(
                                        languageCode: 'en');
                                    Navigator.pop(context);
                                  },
                                  child: IgnorePointer(
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          tristate: true,
                                          shape: const CircleBorder(
                                              eccentricity: 0),
                                          value: !appLangCubit.isArabicLanguage(
                                              context: context),
                                          onChanged: (value) {},
                                        ),
                                        Text(
                                          context.loc!.englishLang,
                                          style: MainTextStyle.boldTextStyle(
                                              fontSize: 20,
                                              color: MainColors.primaryColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
              icon: BlocBuilder(
                bloc: AppLanguageCubit.get(context),
                builder: (context, state) {
                  return Text(
                    context.isArabicLanguage ? 'Ar' : "En",
                    style: MainTextStyle.regularTextStyle(
                        fontSize: 17, color: MainColors.primaryColor),
                  );
                },
              ),
            ),
          )
        ],
      ),
      body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: ItemPadding.h16,
          children: [
            20.ph,
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutePaths.searchPath);
                },
                child: const SearchContainer(
                  autoFocus: false,
                  enabled: false,
                )),
            38.ph,
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return CarouselHome(
                  position: cubit.carouselSliderIndex,
                  controller: cubit.carouselSliderController,
                  onTap: (index) {
                    cubit.changeCarouselSliderIndex(index.toInt());
                  },
                  onPageChanged: (index, reason) {
                    cubit.changeCarouselSliderIndex(index);
                  },
                );
              },
            ),
            24.ph,
            Text(
              context.loc!.motoCar??'',
              style: MainTextStyle.boldTextStyle(
                  fontSize: 17, color: MainColors.blackText),
            ),
            30.ph,
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeCategoryLoadingState) {
                  return const Center(child: CircularProgressIndicator());
                }
                return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemBuilder: (context, index) => CategoryItem(
                        image: images[index], title: titles[index]),
                    itemCount: 4);
              },
            )
          ]),
    );
  }
}
