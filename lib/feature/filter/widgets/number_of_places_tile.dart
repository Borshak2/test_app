part of 'filter_widgets.dart';

class NumberOfPlacesTile extends StatefulWidget {
  const NumberOfPlacesTile({super.key});

  @override
  State<NumberOfPlacesTile> createState() => _NumberOfPlacesTileState();
}

class _NumberOfPlacesTileState extends State<NumberOfPlacesTile> {
  RangeValues seats = RangeValues(1, 20);
  int selectedPlaces = 2;

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
      title: Text('Количество мест'),
      subtitle: Text('${seats.start.round()}-${seats.end.round()}'),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              RangeSlider(
                activeColor: Colors.black,
                values: seats,
                min: 1,
                max: 20,
                onChanged: (RangeValues values) {
                  setState(() {
                    seats = values;
                  });
                },
                divisions: 10,
                labels: RangeLabels(
                  seats.start.round().toString(),
                  seats.end.round().toString(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Мест для младенца'),
                  Row(
                    children: [
                      _buildIconButton(Icons.remove, () {
                        if (selectedPlaces > 1) {
                          setState(() {
                            selectedPlaces--;
                          });
                        }
                      }),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('$selectedPlaces'),
                      ),
                      _buildIconButton(Icons.add, () {
                        setState(() {
                          selectedPlaces++;
                        });
                      }),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildIconButton(IconData icon, VoidCallback onPressed) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            color: Colors.black,
            size: 18,
          ),
          onPressed: onPressed,
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
