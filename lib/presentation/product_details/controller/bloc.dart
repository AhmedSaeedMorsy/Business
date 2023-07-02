import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_service_e_commerce/presentation/product_details/controller/events.dart';

import 'states.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsBaseEvent, ProductDetailsStates> {
  static ProductDetailsBloc get(context) => BlocProvider.of(context);
  ProductDetailsBloc() : super(const ProductDetailsStates()) {
    on<AddToFavorites>(_addToFavorites);
  }
  bool isInfavorit = false;
  FutureOr<void> _addToFavorites(
      AddToFavorites event, Emitter<ProductDetailsStates> emit) {
    isInfavorit = event.isInfavorit;
    emit(state.copyWith(isInfavorit: event.isInfavorit));
  }
}
