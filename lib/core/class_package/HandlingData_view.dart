import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusReqest statusreqest;
  final Widget widget;

  const HandlingDataView(
      {super.key, required this.statusreqest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusreqest == StatusReqest.loading
        ? Center(
            child: Lottie.asset(AppImageAsset.loadinglottie,
                height: 100, width: 100, fit: BoxFit.contain),
          )
        : statusreqest == StatusReqest.offlinefailure
            ? Center(
                child: Lottie.asset(AppImageAsset.offlinelottie),
              )
            : statusreqest == StatusReqest.serverfailure
                ? Center(
                    child: Lottie.asset(AppImageAsset.serverlottie,
                        reverse: true,
                        height: 500,
                        width: 500,
                        fit: BoxFit.contain),
                  )
                : statusreqest == StatusReqest.failure
                    ? Center(
                        child: Lottie.asset(AppImageAsset.nodatalottie,
                            repeat: false),
                      )
                    : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusReqest statusreqest;
  final Widget widget;

  const HandlingDataRequest(
      {super.key, required this.statusreqest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusreqest == StatusReqest.loading
        ? Center(
            child: Lottie.asset(AppImageAsset.loadinglottie,
                height: 100, width: 100, fit: BoxFit.contain),
          )
        : statusreqest == StatusReqest.offlinefailure
            ? Center(
                child: Lottie.asset(AppImageAsset.offlinelottie),
              )
            : statusreqest == StatusReqest.serverfailure
                ? Center(
                    child: Lottie.asset(AppImageAsset.serverlottie,
                        // reverse: true,
                        // height: 500,
                        // width: 500,
                        // fit: BoxFit.contain
                        ),
                  )
                : widget;
  }
}
