part of 'home_notifier.dart';

@freezed
class HomeState with _$HomeState{
  const factory HomeState({
    required List<ShortPalaceModel> places,
    required List<CategoryModel> categories,
    required int selectedCategoryId,
  }) = _State;
}



