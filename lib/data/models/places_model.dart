class ShortPalaceModel {
  final int id;
  final List<String> images;
  final String title;
  final String distance;
  final String date;
  final String guests;
  final String price;
  final String views;

  ShortPalaceModel(
      {required this.id,
      required this.images,
      required this.title,
      required this.distance,
      required this.date,
      required this.guests,
      required this.price,
      required this.views});
}

class FullPlacesModel extends ShortPalaceModel {
  final String subTitle;
  final String description;
  final List<EntertainmentModel> entertainment;
  final List<FacilityModel> facility;
  final List<BedroomModel> bedRoom;

  FullPlacesModel(
      {required this.subTitle,
      required this.description,
      required this.entertainment,
      required this.facility,
      required this.bedRoom,
      required super.id,
      required super.images,
      required super.title,
      required super.distance,
      required super.date,
      required super.guests,
      required super.price,
      required super.views});
}

class EntertainmentModel {
  final String image;
  final String title;

  EntertainmentModel({required this.image, required this.title});
}

class FacilityModel {
  final String icon;
  final String title;

  FacilityModel({required this.icon, required this.title});
}

class BedroomModel {
  final String icon;
  final String title;

  BedroomModel({required this.icon, required this.title});
}
