import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_service_e_commerce/presentation/advert_by_type/controller/events.dart';
import 'package:micro_service_e_commerce/presentation/advert_by_type/controller/states.dart';

class AdvertByTypeBloc extends Bloc<AdvertByTypeBaseEvent, AdvertByTypeStates> {
  static AdvertByTypeBloc get(context) => BlocProvider.of(context);
  AdvertByTypeBloc() : super(const AdvertByTypeStates()) {
    on<ChangeShowItemEvent>(_changeShowItemEvent);
    on<ChangeSortedItemEvent>(_changeSortedItemEvent);
  }
  bool isList = true;
  bool isSorted = false;
  FutureOr<void> _changeShowItemEvent(
      ChangeShowItemEvent event, Emitter<AdvertByTypeStates> emit) {
    isList = event.isList;
    emit(
      state.copyWith(
        isList: event.isList,
      ),
    );
  }

  FutureOr<void> _changeSortedItemEvent(
      ChangeSortedItemEvent event, Emitter<AdvertByTypeStates> emit) {
    isSorted = event.isSorted;
    emit(
      state.copyWith(
        isSorted: event.isSorted,
      ),
    );
  }
}
