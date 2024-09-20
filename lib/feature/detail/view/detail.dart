import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/core/app_icons.dart';
import 'package:flutter_test_app/feature/detail/widgets/detail_widgets.dart';

@RoutePage()
class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/image3.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
                Positioned(
                  top: 20,
                  left: 16,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 24,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 16,
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      size: 24,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Этнопарк INAYA',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/image6.jpg',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Республика Башкортостан,\nМелеузовский район,\n д. Сергеевка • 831 км',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              color: Colors.black,
                            ),
                            child: Center(
                              child: AppIcons.route(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ActionButton(
                    icon: AppIcons.phone(),
                    label: 'Позвонить',
                    
                    
                  ),
                  ActionButton(
                    icon: AppIcons.message(),
                    label: 'Написать',
                    
                    
                  ),
                  ActionButton(
                    icon: AppIcons.share(),
                    label: 'Поделиться',
                    
                    
                  ),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах! \n\nМы ждем вас в гости с семьей или друзьями! Юрты, как и в древние времена, изготовлены из войлока и дерева, а для более комфортного проживания оборудованы печью-камином и электричеством. Они расположены на живописном берегу Нугушского водохранилища, вдали от повседневных забот, городского шума и суеты. Опыт проживания в юртах - это идеальный способ погрузиться за короткий срок в быт и культуру местного кочевого этноса - башкир.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Развлечения',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        EntertainmentItem(
                          image: 'assets/images/image14.jpg',
                          label: 'Конные прогулки',
                        ),
                        EntertainmentItem(
                          image: 'assets/images/image8.jpg',
                          label: 'Водоем',
                        ),
                        EntertainmentItem(
                          image: 'assets/images/image13.jpg',
                          label: 'SUP-сёрфинг',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Удобства',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    spacing: 20,
                    runSpacing: 10,
                    children: [
                      FacilityItem(
                          icon: AppIcons.grill(size: 30), label: 'Мангал'),
                      FacilityItem(icon: AppIcons.tv(size: 30), label: 'ТВ'),
                      FacilityItem(
                          icon: AppIcons.parking(size: 30), label: 'Парковка'),
                      FacilityItem(
                          icon: AppIcons.conditioner(size: 30),
                          label: 'Кондиционер'),
                    ],
                  ),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Спальные места',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  BedroomItem(
                    label: 'Двуспальная кровать',
                    count: 3,
                    icon: AppIcons.doubleBed(),
                  ),
                  Divider(),
                  BedroomItem(label: 'Диван', count: 1, icon: AppIcons.sofa()),
                  Divider(),
                  BedroomItem(
                      label: 'Место для младенца',
                      count: 1,
                      icon: AppIcons.babySeat()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





















































































































































































