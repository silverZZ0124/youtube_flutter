import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_flutter/src/binding/init_binding.dart';
import 'package:youtube_flutter/src/app.dart';
import 'package:youtube_flutter/src/components/youtube_detail.dart';



void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Youtube Clone App",
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
     initialBinding: InitBinding(),
     initialRoute: '/',
     getPages: [
       GetPage(name: '/', page: ()=>App()),
       GetPage(name: '/detail/:videoId', page: ()=>YoutubeDetail())
     ],
    );
  }
}
