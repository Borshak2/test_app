part of 'filter_widgets.dart';

class PriceRangeTile extends StatefulWidget {
  const PriceRangeTile({super.key});

  @override
  State<PriceRangeTile> createState() => _PriceRangeTileState();
}

class _PriceRangeTileState extends State<PriceRangeTile> {
  RangeValues priceRange = RangeValues(6000, 34000);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
        side: BorderSide(color: Colors.transparent),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
        side: BorderSide(color: Colors.transparent),
      ),
      title: Text('Ценовой диапазон'),
      subtitle:
          Text('${priceRange.start.round()}P - ${priceRange.end.round()}P'),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Средняя цена за сутки: 12000 P'),
        ),
        RangeSlider(
          values: priceRange,
          activeColor: Colors.black,
          inactiveColor: Colors.black.withOpacity(0.2),
          min: 6000,
          max: 34000,
          onChanged: (RangeValues values) {
            setState(() {
              priceRange = values;
            });
          },
          divisions: 10,
          labels: RangeLabels(
            priceRange.start.round().toString(),
            priceRange.end.round().toString(),
          ),
        ),
      ],
    );
  }
}
