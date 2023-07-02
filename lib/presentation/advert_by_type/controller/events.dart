import 'package:equatable/equatable.dart';

abstract class AdvertByTypeBaseEvent extends Equatable {}

class ChangeShowItemEvent extends AdvertByTypeBaseEvent {
  final bool isList;
  ChangeShowItemEvent(this.isList);
  @override
  List<Object?> get props => [
        isList,
      ];
}


class ChangeSortedItemEvent extends AdvertByTypeBaseEvent {
  final bool isSorted;
  ChangeSortedItemEvent(this.isSorted);
  @override
  List<Object?> get props => [
        isSorted,
      ];
}