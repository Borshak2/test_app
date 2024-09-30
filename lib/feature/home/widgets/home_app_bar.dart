import 'package:flutter/material.dart';
import 'package:flutter_test_app/core/app_icons.dart';
import 'package:flutter_test_app/feature/filter/view/filter.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    surfaceTintColor: Colors.transparent,
    leading: IconButton(
      iconSize: 24,
      icon: AppIcons.sandwich(),
      onPressed: () {},
    ),
    title: Container(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey, width: 1),
          ),
          hintText: 'Поиск',
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                useSafeArea: true,
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (BuildContext context) {
                  return DraggableScrollableSheet(
                    expand: false,
                    initialChildSize: 0.9,
                    minChildSize: 0.2,
                    maxChildSize: 0.9,
                    builder: (BuildContext context, ScrollController) {
                      return SizedBox(
                        child: Stack(
                          alignment: Alignment.topCenter,
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              top: -20,
                              child: Container(
                                height: 4,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                            ),
                            FilterBottomSheet(),
                          ],
                        ),
                      );
                    },
                  );
                },
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: AppIcons.settings(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
