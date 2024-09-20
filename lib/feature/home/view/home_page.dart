import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test_app/app/services/remote_data_service.dart';
import 'package:flutter_test_app/di/di.dart';
import 'package:flutter_test_app/feature/home/home_riverprod/home_notifier.dart';
import 'package:flutter_test_app/feature/home/widgets/home_widgets.dart';





@RoutePage()
class HomePage extends StatelessWidget {
  final RemoteDataService service = inject<RemoteDataService>();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ProviderScope(child: Consumer(builder: (context, ref, child) {
      final notifier = ref.watch(homStateNotifierProvider);
      return Scaffold(
        appBar: homeAppBar(context),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenWidth *
                      0.3, 
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: notifier.categories
                        .map((category) => CategoryItem(
                            category: category,
                            onPress: ref.watch(homStateNotifierProvider.notifier).changeFilter,
                            isSelected: category.id == notifier.selectedCategoryId))
                        .toList(),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: notifier.places
                        .map((place) =>
                            PlaceCard(place: place, key: ValueKey(place.id)))
                        .toList(),
                  ),
                ),
              ],
            ),
            MapWidget(screenWidth: screenWidth),
          ],
        ),
      );
    }));
  }
}
