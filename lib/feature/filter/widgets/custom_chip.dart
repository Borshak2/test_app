part of 'filter_widgets.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final Widget icon;
  const CustomChip(
    this.label,
    this.icon, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border:
              Border.fromBorderSide(BorderSide(color: Colors.grey, width: 1))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(
            label,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
