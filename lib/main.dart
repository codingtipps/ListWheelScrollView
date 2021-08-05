import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'test',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white70,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imagesURLS = [
    'https://store-images.s-microsoft.com/image/apps.13801.13777613854529434.257959da-c3a7-4c0c-bc46-4eab0d9b3b45.74fd1573-5988-4d86-bbaa-911fc4e99efe?mode=scale&q=90&h=1080&w=1920',
    'https://fujifilm-x.com/wp-content/uploads/2019/09/Image-1.jpg',
    'https://learn.zoner.com/wp-content/uploads/2018/08/landscape-photography-at-every-hour-part-ii-photographing-landscapes-in-rain-or-shine.jpg',
    'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg',
    'https://www.diariesofmagazine.com/wp-content/uploads/2018/11/The-most-beautiful-landscapes-in-Kyrgyzstan_flowers.jpg',
    'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80',
    'https://artofcreativephotography.com/wp-content/uploads/2019/03/David-Koester-Start-In-Die-Landschaftsfotografie-I.jpg',
    'https://tripspi-prod.imgix.net/blogs/vG3JS5lXOE/d2aJg-luis-fernando-felipe-alves-9mckk9YMglY-unsplash.jpg?ixlib=js-2.3.2&w=1024&auto=compress&fit=crop&s=f13ee1017771d50b761d3a2170de100a',
    'https://theculturetrip.com/wp-content/uploads/2017/08/10552556345_9dcad3110c_k.jpg',
    'https://www.pandotrip.com/wp-content/uploads/2013/07/Tuscany-by-Leonardo-Acquisti-980x551.jpeg',
    'https://d19lgisewk9l6l.cloudfront.net/assetbank/Uluru_Ayers_Rock_Northern_Territory_Australia_5529.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView(
        itemExtent: 200,
        offAxisFraction: -1.5,
        children: List.generate(
          10,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imagesURLS[index]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
