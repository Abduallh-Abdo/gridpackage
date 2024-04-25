import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black45,
        elevation: 8,
        title: const Text(
          'Staggered Grid View',
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black38,
              Colors.black45,
            ],
          ),
        ),
        child: MasonryGridView.builder(
          // mainAxisSpacing: 5, //  عشان اعمل مسافه بالعرض
          // crossAxisSpacing: 8, //عشان اعمل مسافه بالطول
          itemCount: 10,
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // عشان اتحكم فى عدد العموايد
          ),
          itemBuilder: (context, index) => Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.all(3),
              // margin: const EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/images/image${index + 1}.jpg',
                fit: BoxFit.cover,
              )),

          /// هنا الوان عشان تكون شايف عامله ازاى
          // itemBuilder: (context, index) => Container(
          //   color: Colors.cyan,
          //   height: 250,
          //   margin: EdgeInsets.all(10),
          // ),
        ),
      ),
    );
  }
}
