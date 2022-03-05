import 'package:flutter/material.dart';
import 'package:youtube_flutter/src/components/custom_appbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              title: CustomAppBar(),
              floating: true,
              snap: true,
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 150, color: Colors.grey,),
              );
            },
            childCount: 10))
          ],
        )
    );
  }
}