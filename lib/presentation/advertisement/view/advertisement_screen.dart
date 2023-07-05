// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';

import '../../../app/resources/routes_manager.dart';

class AdvertisementScreen extends StatelessWidget {
  const AdvertisementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppSize.s10.w,
            ),
          ),
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / AppSize.s40,
            horizontal: MediaQuery.of(context).size.width / AppSize.s40,
          ),
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: IconButton(
                  icon: const Icon(
                    Icons.close,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      Routes.layoutRoute,
                    );
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: ColorManager.primaryColorBlue,
                ),
              ),
              Expanded(
                child: Container(
                  color: ColorManager.primaryColorGreen,
                ),
              ),
              Expanded(
                child: Container(
                  color: ColorManager.primaryColorBlue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
