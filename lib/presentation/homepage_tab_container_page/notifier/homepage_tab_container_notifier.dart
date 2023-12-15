import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flutter_firebase_app/presentation/homepage_tab_container_page/models/homepage_tab_container_model.dart';
part 'homepage_tab_container_state.dart';

final homepageTabContainerNotifier = StateNotifierProvider<
    HomepageTabContainerNotifier, HomepageTabContainerState>(
  (ref) => HomepageTabContainerNotifier(HomepageTabContainerState(
    searchController: TextEditingController(),
    homepageTabContainerModelObj: HomepageTabContainerModel(),
  )),
);

/// A notifier that manages the state of a HomepageTabContainer according to the event that is dispatched to it.
class HomepageTabContainerNotifier
    extends StateNotifier<HomepageTabContainerState> {
  HomepageTabContainerNotifier(HomepageTabContainerState state)
      : super(state) {}
}
