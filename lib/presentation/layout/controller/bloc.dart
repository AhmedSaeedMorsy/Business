import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/presentation/home/view/home_screen.dart';
import '../../favorites/view/favorites_screen.dart';
import '../../more/view/more_screen.dart';
import '../../my_ads/view/my_ads_screen.dart';
import 'event.dart';
import 'states.dart';

class LayoutBloc extends Bloc<LayoutBaseEvent, LayoutStates> {
  static LayoutBloc get(context) => BlocProvider.of(context);
  LayoutBloc() : super(const LayoutStates()) {
    on<ChangeBottomNavBar>(
      _changeBottomNavBar,
    );
  }
  int index = 0;
  void _changeBottomNavBar(event, emit) {
    index = event.index;
    emit(
      state.copyWith(
        index: event.index,
      ),
    );
  }

  List<Widget> screens = const [
    HomeScreen(),
    MyAdsScreen(),
    FavoritesScreen(),
    MoreScreen(),
  ];
  List<String> appBarTitle = [
    AppStrings.business,
    "Profile name",
    AppStrings.favorites.tr(),
    AppStrings.more.tr(),
  ];
}
