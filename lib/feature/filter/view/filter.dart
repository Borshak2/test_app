import 'package:flutter/material.dart';
import 'package:flutter_test_app/feature/filter/widgets/filter_widgets.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

   @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth,
          child: ListView(
            padding: EdgeInsets.all(16),
            children: const [
              Text(
                'Фильтры',
              ),
              SizedBox(height: 16),
              DatePicker(),
              Divider(),
              PriceRangeTile(),
              Divider(),
              DistanceTile(),
              Divider(),
              HouseTypesTile(),
              Divider(),
              NumberOfPlacesTile(),
              Divider(),
              FacilitiesTile(),
              Divider(),
              EntertainmentTile(),
            ],
          ),
        );
      },
    );
  }
}
