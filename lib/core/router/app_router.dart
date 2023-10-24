import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/layout/view/layout_view.dart';
import '../../features/layout/view_model/layout_cubit/cubit.dart';
import 'route_paths.dart';

import 'package:car_fixing/core/router/route_paths.dart';
import 'package:car_fixing/features/notifications/view_model/notifications_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/my_orders/view/bill_view.dart';
import '../../features/my_orders/view/my_orders_view.dart';
import '../../features/my_orders/view_model/bill_cubit/bill_cubit.dart';
import '../../features/notifications/notifications_view.dart';

final navKey = GlobalKey<NavigatorState>();
//
class AppRouter {
  static Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      // case RoutePaths.splashviewPath:
      //   return MaterialPageRoute(
      //     settings: settings,
      //     builder: (context) => const SplashView(),
      //   );
      case RoutePaths.myOrdersPath:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const MyOrdersView(),
        );
//       case RoutePaths.userRegisterData:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => const UserRegisterData(),
//         );
//       case RoutePaths.orderTrackingPath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => OrderTrackingView(),
//         );
//       case RoutePaths.categoryProductsPath:
//         var mapData = settings.arguments as Map<String, dynamic>?;
//         var subCatCubit =
//             mapData?[Constants.subCatCubitArg] as SubCategtoryCubit?;
//         var initialTabIndex =
//             mapData?[Constants.initialCatIndexCubitArg] as int?;
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => MultiBlocProvider(
//             providers: [
//               if (subCatCubit != null) ...[
//                 BlocProvider.value(
//                   value: subCatCubit,
//                 ),
//               ],
//               //! not needed here, the page contains category tabs so we need to initialize it every time user select specific category
//               // BlocProvider(
//               //   create: (context) => CategoryProductCubit(
//               //     catId: catId,
//               //   ),
//               // ),
//               BlocProvider(
//                 create: (context) => CategoryTabsCubit(
//                   initialTabIndex: initialTabIndex,
//                 ),
//               ),
//             ],
//             child: const CategoryProductsView(),
//           ),
//         );
//       case RoutePaths.subCategoryPath:
//         var mapData = settings.arguments as Map<String, dynamic>?;
//         var subCatId = mapData?['id'] as int?;
//         var parentName = mapData?['name'] as String?;
//
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => BlocProvider(
//               create: (context) => SubCategtoryCubit(
//                     subCatId: subCatId,
//                     parentName: parentName,
//                   ),
//               child: const SubCategoryView()),
//         );
      case RoutePaths.billPath:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => BlocProvider(
            create: (context) => BillCubit(),
            child: const BillView(),
          ),
        );
//
//       case RoutePaths.forgetPasswordPath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => BlocProvider(
//             create: (context) => ForgetPasswordCubit(),
//             child: const ForgetPasswordView(),
//           ),
//         );
//       case RoutePaths.searchPath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => BlocProvider(
//             create: (context) => SearchCubit(),
//             child: const SearchView(),
//           ),
//         );
//       case RoutePaths.favouritePath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => MultiBlocProvider(
//             providers: [
//               BlocProvider(
//                 create: (context) => FavouriteCubit(),
//               ),
//               // BlocProvider.value(
//               //   value: SubCategoryCubit.get(context),
//
//               //   // create: (context) => (),
//               // ),
//             ],
//             child: const FavouriteView(),
//           ),
//         );
//       case RoutePaths.profileViewPth:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => BlocProvider(
//             create: (context) => ProfileCubit(),
//             child: const ProfileView(),
//           ),
//         );
//       case RoutePaths.addLocation:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => BlocProvider(
//             create: (context) => AddLocationCubit(),
//             child: const AddLocationView(),
//           ),
//         );
//       case RoutePaths.couponsView:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => const CouponsView(),
//         );
//       case RoutePaths.newPasswordPath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => BlocProvider(
//               create: (context) => NewPasswordCubit(),
//               child: const NewPasswordScreen()),
//         );
//       case RoutePaths.verificationPath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => BlocProvider(
//               create: (context) => VerificationCubit(),
//               child: const VerficationCodeScreen()),
//         );
//       case RoutePaths.enterPasswordPath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => BlocProvider(
//               create: (context) => MyAccountCubit(),
//               child: const EnterPasswordView()),
//         );
//       case RoutePaths.aboutApp:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => const AboutApp(),
//         );
//       case RoutePaths.technicalSupportView:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => const TechnicalSupportView(),
//         );
//       case RoutePaths.questionAnswer:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => const QuestionAnswerView(),
//         );
//       case RoutePaths.orderSuccessPath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => const OrderSuccessView(),
//         );
//       case RoutePaths.cartPath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => BlocProvider(
//             create: (context) => CartCubit(),
//             child: const CartView(),
//           ),
//         );
//       case RoutePaths.productDetailsPath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => BlocProvider(
//             create: (context) => ProductDetailsCubit(),
//             child: const ProductDetailsView(),
//           ),
//         );
//       case RoutePaths.personalDataPath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => BlocProvider(
//             create: (context) => PersonalDataCubit(),
//             child: const PersonalDataView(),
//           ),
//         );
//       case RoutePaths.paymentPath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => const PaymentView(),
//         );
      case RoutePaths.notificationsPath:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => BlocProvider(
              create: (context) => NotificationsCubit(),
              child: const NotificationsView()),
        );
//       case RoutePaths.settingsDetailsPath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => const SettingsView(),
//         );
//       case RoutePaths.settingsPath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => BlocProvider(
//               create: (context) => MyAccountCubit(),
//               child: const MyAccountView()),
//         );
//       case RoutePaths.loginPath:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => const LoginView(),
//         );
      case RoutePaths.layoutPath:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => BlocProvider(
              create: (context) => LayoutCubit(), child: const LayoutView()),
        );
//       case RoutePaths.addresses:
//         return MaterialPageRoute(
//           builder: (_) => const AddressesView(),
//           settings: settings,
//         );
//       case RoutePaths.addAddressPath:
//         var addressesDatum = settings.arguments as GetAllAdressesDatum?;
//         return MaterialPageRoute(
//           builder: (_) => BlocProvider(
//             create: (context) =>
//                 AddAddressCubit(addressesDatum: addressesDatum),
//             child: const AddAddress(),
//           ),
//           settings: settings,
//         );
//       default:
//         return MaterialPageRoute(
//           builder: (context) => const SplashView(),
//         );
//     }
//   }
}}}
