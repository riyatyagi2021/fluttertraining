import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';


class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  List<String> images=[
    'assets/images/gi1.jpeg',
    'assets/images/gi2.jpeg',
    'assets/images/gi3.jpeg',
    'assets/images/gi4.jpeg',
    'assets/images/gi5.jpeg',
    'assets/images/gi6.jpeg',
    'assets/images/wall2.jpeg',
    'assets/images/hi.jpeg',
    'assets/images/cl.jpeg',
    'assets/images/picture1.jpg',
    'assets/images/gi1.jpeg',
    'assets/images/gi2.jpeg',
    'assets/images/gi3.jpeg',
    'assets/images/gi4.jpeg',
    'assets/images/gi5.jpeg',
    'assets/images/gi6.jpeg',
    'assets/images/wall2.jpeg',
    'assets/images/hi.jpeg',
    'assets/images/cl.jpeg',
    'assets/images/picture1.jpg',
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 35,horizontal: 5),
                alignment: Alignment.center,
                constraints: BoxConstraints.expand(
                    height: 300
                ),
                child: imageSlider(context)
            ),
            Container(
              height: 300,
              padding: EdgeInsets.only(left: 10,right: 10),
              child: GridView.builder(
                itemCount:images.length ,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 5
                  ),
                  itemBuilder: (BuildContext context, int index){
              return Image.asset(images[index]);
              },
              ),
            )
          ],
        ),
             ),
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

