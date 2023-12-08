import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutflix/apiservice/api.dart';
import 'package:flutflix/widgets/movie_slider.dart';
import 'package:flutflix/widgets/trending_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/movie.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Movie>> trendingMovies;
  late Future<List<Movie>> topratedMovies;
  late Future<List<Movie>> upcommingMovies;


  void initState() {
    super.initState();
    trendingMovies = Api().getTrendingMovies();
    topratedMovies=Api().getTopRatedMovie();
    upcommingMovies=Api().getUpcommingMovie();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent.withOpacity(0.5),
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          "lib/asset/flutflix.png",
          fit: BoxFit.cover,
          height: 40,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trending Movies",
                style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w900, fontSize: 24),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: FutureBuilder(
                  future: trendingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Text(snapshot.error.toString()));
                    }else if(snapshot.hasData){
                      final data=snapshot.data;
                      return  TrendingSlider(snapshot: snapshot,);
                    }else{
                      return Center(
                        child: CircularProgressIndicator()
                      );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Top Rated Movie",
                style: GoogleFonts.aBeeZee(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: FutureBuilder(
                  future: topratedMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Text(snapshot.error.toString()));
                    }else if(snapshot.hasData){
                      final data=snapshot.data;
                      return  MovieSlider(snapshot: snapshot,);
                    }else{
                      return Center(
                          child: CircularProgressIndicator()
                      );
                    }
                  },
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Text(
                "Upcomming Movies",
                style: GoogleFonts.aBeeZee(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: FutureBuilder(
                  future: upcommingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Text(snapshot.error.toString()));
                    }else if(snapshot.hasData){
                      final data=snapshot.data;
                      return  MovieSlider(snapshot: snapshot,);
                    }else{
                      return Center(
                          child: CircularProgressIndicator()
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
