import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';


class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(vertical: 35,horizontal: 5),
          alignment: Alignment.center,
          constraints: BoxConstraints.expand(
              height: 300
          ),
          child: imageSlider(context)),
    );

  }
}


Swiper imageSlider(context){
  return Swiper( itemCount: 5,
    itemBuilder: (BuildContext context, int index){
      return Image.asset('assets/images/picture1.jpg',fit: BoxFit.cover,);
    },
    scale: 0.8,
// viewportFraction: 0.7,
    pagination: SwiperPagination(),
    control: SwiperControl()
  );
}

