import 'package:flutflix/model/movie.dart';
import 'package:flutflix/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/backbutton.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  DetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar.large(
          leading: BckBtn(),
          backgroundColor: Color(0xFF23272E),
          expandedHeight: 500,
          pinned: true,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              movie.title,
              style: GoogleFonts.belleza(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            background: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              child: Image.network(
                "${Constants.imagePath}${movie.posterPath}",
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),

            // Add this line
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "OverView",
                  style: GoogleFonts.belleza(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  movie.overview,
                  style: GoogleFonts.openSans(
                      fontSize: 15, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.justify,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Container(
                        padding: EdgeInsets.all(08),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Release Date:",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                            Text(movie.releaseDate,
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18)),


                          ],
                        ),
                      ),

                    ),
                    SizedBox(width: 10,),
                    Container(
                      padding: EdgeInsets.all(08),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Text("Rating",style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18)),
                          Icon(Icons.star,color: Colors.amber,),
                          Text("${movie.voteAverage.toStringAsFixed(1)}/10")
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        )
      ],
    ));
  }
}


