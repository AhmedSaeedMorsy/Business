import 'package:equatable/equatable.dart';

abstract class ProductDetailsBaseEvent extends Equatable {}

class AddToFavorites extends ProductDetailsBaseEvent {
  final bool isInfavorit;
  AddToFavorites(this.isInfavorit);
  @override
  List<Object?> get props => [
        isInfavorit,
      ];
}
