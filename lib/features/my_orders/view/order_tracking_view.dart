import 'dart:async';
import 'package:car_fixing/core/extensions/context_extension.dart';
import 'package:car_fixing/core/extensions/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../core/components/widget_appbar.dart';
import '../../../core/theme/item_padding.dart';
import '../../../core/theme/main_colors.dart';
import '../../../core/theme/main_text_styles.dart';
import '../../constants/images.dart';
import 'widget/custom_row.dart';


class OrderTrackingView extends StatelessWidget {
  OrderTrackingView({Key? key}) : super(key: key);
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    var translate = context.loc!;
    var p;
    return Scaffold(
      backgroundColor: MainColors.background,
      appBar: WidgetAppbar(
        context: context,
        title: translate.orderTracking,
      ),
      body: ListView(
        padding: ItemPadding.h16v16,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                translate.orderNumber,
                style: MainTextStyle.boldTextStyle(
                    fontSize: 15, color: MainColors.blackText),
              ),
              Text(
                '#22022023',
                style: MainTextStyle.boldTextStyle(
                    fontSize: 15, color: MainColors.primaryColor),
              )
            ],
          ),
          8.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                translate.dateTime,
                style: MainTextStyle.boldTextStyle(
                    fontSize: 15, color: MainColors.blackText),
              ),
              Text(
                '7:52 2/23/2023',
                style: MainTextStyle.boldTextStyle(
                    fontSize: 15, color: MainColors.grey),
              )
            ],
          ),
          16.ph,
          ClipRRect(borderRadius: BorderRadius.circular(20.r),
            child: SizedBox(
              width: 400.w,
              height: 240.h,
              child: GoogleMap(
                zoomControlsEnabled: false,
                mapType: MapType.hybrid,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
          ),
          24.ph,
          CustomRow(
            image: Assets.imagesNotes,
            text: translate.requestReceipt,
          ),
          32.ph,
          CustomRow(
            text: translate.orderProcessed,
            image: Assets.imagesPreparing,
          ),
          32.ph,
          CustomRow(text: translate.receivedRequest, image: Assets.imagesDelivering),
          32.ph,
          CustomRow(text: translate.deleget, image: Assets.imagesDriver),
          32.ph,
          CustomRow(text: translate.orderDelivered, image: Assets.imagesDriver),
          32.ph
        ],
      ),
    );
  }
}
