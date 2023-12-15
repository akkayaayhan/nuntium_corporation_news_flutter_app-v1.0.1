// ignore_for_file: must_be_immutable

part of 'homepage_tab_container_notifier.dart';

/// Represents the state of HomepageTabContainer in the application.
class HomepageTabContainerState extends Equatable {
  HomepageTabContainerState({
    this.searchController,
    this.homepageTabContainerModelObj,
  });

  TextEditingController? searchController;

  HomepageTabContainerModel? homepageTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homepageTabContainerModelObj,
      ];

  HomepageTabContainerState copyWith({
    TextEditingController? searchController,
    HomepageTabContainerModel? homepageTabContainerModelObj,
  }) {
    return HomepageTabContainerState(
      searchController: searchController ?? this.searchController,
      homepageTabContainerModelObj:
          homepageTabContainerModelObj ?? this.homepageTabContainerModelObj,
    );
  }
}
