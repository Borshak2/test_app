part of 'detail_widgets.dart';

class ActionButton extends StatelessWidget {
  final Widget icon;
  final String label;

  const ActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border:
              Border.fromBorderSide(BorderSide(color: Colors.grey, width: 1))),
      child: Column(
        children: [
          icon,
          SizedBox(height: 5),
          Text(label),
        ],
      ),
    );
  }
}
