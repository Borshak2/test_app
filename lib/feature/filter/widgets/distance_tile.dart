part of 'filter_widgets.dart';

class DistanceTile extends StatefulWidget {
  const DistanceTile({super.key});

  @override
  State<DistanceTile> createState() => _DistanceTileState();
}

class _DistanceTileState extends State<DistanceTile> {
  double distance = 300;
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
      title: Text('Отдаленность'),
      subtitle: Row(
        children: [
          AppIcons.vector(),
          SizedBox(width: 6),
          Text('$distance км'),
        ],
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Slider(
            activeColor: Colors.black,
            value: distance,
            min: 0,
            max: 500,
            divisions: 100,
            label: distance.round().toString() + ' км',
            onChanged: (double value) {
              setState(() {
                distance = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
