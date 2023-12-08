import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutflix/Screens/details.dart';
import 'package:flutflix/widgets/constants.dart';
import 'package:flutter/material.dart';

class TrendingSlider extends StatelessWidget {
  final AsyncSnapshot snapshot;

  TrendingSlider({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: snapshot.data!.length,
        options: CarouselOptions(
          enlargeCenterPage: true,
          pageSnapping: true,
          height: 300,
          viewportFraction: 0.55,
          autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: Duration(seconds: 2),
        ),
        itemBuilder: (context, index, pageViewIndex) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailsScreen(movie: snapshot.data[index],),
              ));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.network(
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    "${Constants.imagePath}${snapshot.data[index].posterPath}"),
              ),
            ),
          );
        },
      ),
    );
  }
}
