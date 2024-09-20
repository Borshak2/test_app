part of 'detail_widgets.dart';

class BedroomItem extends StatelessWidget {
  final String label;
  final int count;
  final Widget icon;

  const BedroomItem(
      {required this.label, required this.count, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            icon,
            SizedBox(
              width: 10,
            ),
            Text(label),
          ],
        ),
        Text('$count'),
      ],
    );
  }
}
