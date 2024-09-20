part of 'detail_widgets.dart';

class FacilityItem extends StatelessWidget {
  final Widget icon;
  final String label;

  const FacilityItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 170), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          Row(
            mainAxisSize: MainAxisSize.min, 
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              icon,
              SizedBox(width: 8), 
              Expanded(
                child: Text(
                  label,
                  overflow: TextOverflow.ellipsis, 
                ),
              ),
            ],
          ),
          SizedBox(height: 8), 
          Divider(thickness: 1), 
        ],
      ),
    );
  }
}