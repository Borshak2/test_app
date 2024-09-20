import 'package:flutter/material.dart';
import 'package:flutter_test_app/app/services/data_generator_service.dart';
import 'package:flutter_test_app/core/app_icons.dart';
import 'package:flutter_test_app/data/models/category_model.dart';
import 'package:flutter_test_app/data/models/places_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class RemoteDataService {
  final DataGeneratorService dataSource;

  RemoteDataService({required this.dataSource});

  late List<ShortPalaceModel> _modelList;
  List<ShortPalaceModel> _filterModelList = [];

  @PostConstruct()
  init() {
    _modelList = _getAllData();
    _filterModelList.addAll(_modelList.reversed);
  }

  List<ShortPalaceModel> _getAllData() {
    return dataSource.getMoreRandomData();
  }

  List<ShortPalaceModel> get getAllModel => _modelList;
  List<ShortPalaceModel> get getModelByFilter => _filterModelList;

  final List<CategoryModel> listCategories = [
    CategoryModel(id: 1, icon: Icon(Icons.more_horiz), label: 'Все'),
    CategoryModel(id: 2, icon: AppIcons.safari(), label: 'Кемпинги'),
    CategoryModel(id: 3, icon: AppIcons.frame(), label: 'Глэмпинги'),
    CategoryModel(id: 4, icon: AppIcons.base(), label: 'Базы отдыха'),
  ];
}
