part of 'filter_widgets.dart';

class EntertainmentTile extends StatefulWidget {
  const EntertainmentTile({super.key});

  @override
  State<EntertainmentTile> createState() => _EntertainmentTileState();
}

class _EntertainmentTileState extends State<EntertainmentTile> {
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
      title: Text('Развлечения'),
      children: [
        Wrap(
          spacing: 8.0,
          runSpacing: 8,
          children: [
            SelectEntertainmentItem(
              image: 'assets/images/image8.jpg',
              label: 'Водоем',
            ),
            SelectEntertainmentItem(
              image: 'assets/images/image9.jpg',
              label: 'Джакузи',
            ),
            SelectEntertainmentItem(
              image: 'assets/images/image10.jpg',
              label: 'Бильярд',
            ),
            SelectEntertainmentItem(
              image: 'assets/images/image11.jpg',
              label: 'Sup board',
            ),
            SelectEntertainmentItem(
              image: 'assets/images/image12.jpg',
              label: 'Бассейн',
            ),
            SelectEntertainmentItem(
              image: 'assets/images/image13.jpg',
              label: 'Фурако',
            ),
            SelectEntertainmentItem(
              image: 'assets/images/image14.jpg',
              label: 'Конные прогулки',
            ),
            SelectEntertainmentItem(
              image: 'assets/images/image15.jpg',
              label: 'Велоследы',
            ),
          ],
        ),
      ],
    );
  }
}

class SelectEntertainmentItem extends StatefulWidget {
  final String image;
  final String label;

  SelectEntertainmentItem({required this.image, required this.label});

  @override
  State<SelectEntertainmentItem> createState() =>
      _SelectEntertainmentItemState();
}

class _SelectEntertainmentItemState extends State<SelectEntertainmentItem> {
  bool _isSelected = false; 

  void _onTap() {
    setState(() {
      _isSelected = !_isSelected; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap, 
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Stack(
              children: [
                
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color:
                        _isSelected ? Colors.grey[300] : null, 
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                
                AnimatedPositioned(
                  duration: Duration(milliseconds: 300),
                  left: _isSelected ? 10 : 0, 
                  top: _isSelected ? 10 : 0, 
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: _isSelected ? 130 : 150, 
                    height: _isSelected ? 130 : 150,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            widget.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(widget.label),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
