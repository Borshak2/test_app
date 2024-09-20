import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test_app/app/services/remote_data_service.dart';
import 'package:flutter_test_app/data/models/category_model.dart';
import 'package:flutter_test_app/data/models/places_model.dart';
import 'package:flutter_test_app/di/di.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_notifier.freezed.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  final RemoteDataService service;

  HomeNotifier(this.service)
      : super(HomeState(
          categories: service.listCategories,
          places: service.getAllModel,
          selectedCategoryId: 1,
        ));

  void changeFilter(int id) {
    if (id != state.selectedCategoryId) {
      if (id == 1) {
        state =
            state.copyWith(selectedCategoryId: 1, places: service.getAllModel);
      } else {
        state = state.copyWith(
            selectedCategoryId: id, places: service.getModelByFilter);
      }
    }
  }
}


final homStateNotifierProvider = StateNotifierProvider<HomeNotifier,HomeState>((ref){
  final service = inject<RemoteDataService>();
  return HomeNotifier(service);
});