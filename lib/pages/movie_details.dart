import 'package:flutter/material.dart';
import 'package:getdata/models/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie? movie;
  const MovieDetail(this.movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String path;
    if(movie?.posterPath != null){
      path = movie!.posterPath;
    }else{
      path = 'https://cdn.vectorstock.com/i/preview-1x/82/99/no-image-available-like-missing-picture-vector-43938299.jpg';
    }

    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(movie!.title),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: height / 1.5,
                child: Image.network(path),
              ),
              Container(
                child: Text(movie!.overview),
                padding: EdgeInsets.only(left: 16, right: 16),
              )
            ],
          ),
        ),
      )
    );
  }
}