part of 'filter_widgets.dart';

class HouseTypesTile extends StatefulWidget {
  const HouseTypesTile({super.key});

  @override
  State<HouseTypesTile> createState() => _HouseTypesTileState();
}

class _HouseTypesTileState extends State<HouseTypesTile> {
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
      title: Text('Дома'),
      children: [
        Wrap(
          spacing: 8.0,
          runSpacing: 8,
          children: [
            CustomChip('A-Frame', AppIcons.frame()),
            CustomChip('Сафари', AppIcons.safari()),
            CustomChip('Базы отдыха', AppIcons.base()),
            CustomChip('Барн хаусы', AppIcons.barn()),
            CustomChip('Сферы', AppIcons.glemp()),
            CustomChip('Модульные дома', AppIcons.module()),
            CustomChip('Шале', AppIcons.shale()),
            CustomChip('Дома бочки', AppIcons.barrel()),
          ],
        ),
      ],
    );
  }
}