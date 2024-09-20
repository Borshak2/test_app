import 'dart:math';

import 'package:flutter_test_app/data/models/places_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class DataGeneratorService {
  final Random random = Random();

  List<ShortPalaceModel> getMoreRandomData() {
    List<ShortPalaceModel> items = [];

    for (int i = 0; i < 5; i++) {
      List<String> shuffledImages = List.from(imageList)..shuffle(random);

      items.add(ShortPalaceModel(
        id: i,
        images: shuffledImages,
        title: _getUniqueTitle(i),
        distance: _getRandomDistance(),
        date: _getRandomDate(),
        guests: _getRandomGuests(),
        price: _getRandomPrice(),
        views: _getRandomViews(),
      ));
    }
    return items;
  }

  final List<String> imageList = [
    'assets/images/image3.jpg',
    'assets/images/image2.jpg',
    'assets/images/image4.jpg',
    'assets/images/image16.jpg',
    'assets/images/image17.jpg',
    'assets/images/image18.jpg',
  ];

  final List<String> titleList = [
    'Глэмпинг Караидель',
    'Кук-Караук',
    'Лель',
    'Талкас',
    'Янган-Тау',
  ];

  String _getRandomDistance() {
    int randomNumber = random.nextInt(1000);
    return '$randomNumber км';
  }

  String _getRandomDate() {
    int randomNumber = random.nextInt(25) + 3;
    return '$randomNumber-${randomNumber + 3} июля';
  }

  String _getRandomGuests() {
    int randomNumber = random.nextInt(5) + 1;
    return '$randomNumber-${randomNumber + 3} гостей';
  }

  String _getRandomPrice() {
    int randomNumber = random.nextInt(20000) + 3000;
    return 'от $randomNumber ₽';
  }

  String _getRandomViews() {
    int randomNumber = random.nextInt(10000) + 300;
    return '$randomNumber просмотров';
  }

  String _getUniqueTitle(int index) {
    return titleList[index % titleList.length];
  }
}
