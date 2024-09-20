part of 'filter_widgets.dart';

class FacilitiesTile extends StatefulWidget {
  const FacilitiesTile({super.key});

  @override
  State<FacilitiesTile> createState() => _FacilitiesTileState();
}

class _FacilitiesTileState extends State<FacilitiesTile> {
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
      title: Text('Удобства'),
      children: [
        Wrap(
          spacing: 8.0,
          runSpacing: 8,
          children: [
            CustomChip('Мангал', AppIcons.grill()),
            CustomChip('Парковка', AppIcons.parking()),
            CustomChip('ТВ', AppIcons.tv()),
            CustomChip('Кондиционер', AppIcons.conditioner()),
            CustomChip('Кухня', AppIcons.kitchen()),
            CustomChip('Wi-Fi', AppIcons.wifi()),
            CustomChip('Беседка', AppIcons.alcove()),
          ],
        ),
      ],
    );
  }
}
