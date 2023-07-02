import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';
import 'package:micro_service_e_commerce/presentation/product_details/controller/bloc.dart';
import 'package:micro_service_e_commerce/presentation/product_details/controller/states.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailsBloc(),
      child: BlocBuilder<ProductDetailsBloc, ProductDetailsStates>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        ProductDetailsBloc.get(context).isInfavorit
                            ? AppStrings.removeFromFavorites.tr()
                            : AppStrings.addToFavorites.tr(),
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / AppSize.s50,
                      ),
                      ProductDetailsBloc.get(context).isInfavorit
                          ? const Icon(
                              Icons.star,
                              color: ColorManager.yellow,
                            )
                          : const Icon(Icons.star_border),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / AppSize.s30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
