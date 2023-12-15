// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'slidercontent1_item_model.dart';

/// This class defines the variables used in the [homepage_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageModel extends Equatable {
  HomepageModel({this.slidercontent1ItemList = const []}) {}

  List<Slidercontent1ItemModel> slidercontent1ItemList;

  HomepageModel copyWith(
      {List<Slidercontent1ItemModel>? slidercontent1ItemList}) {
    return HomepageModel(
      slidercontent1ItemList:
          slidercontent1ItemList ?? this.slidercontent1ItemList,
    );
  }

  @override
  List<Object?> get props => [slidercontent1ItemList];
}
