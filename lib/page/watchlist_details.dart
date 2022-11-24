import 'package:flutter/material.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:intl/intl.dart';

class MyWatchListDetails extends StatelessWidget {
  final MyWatchList movie;
  const MyWatchListDetails({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: appDrawer(context),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(movie.fields.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 24.0, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
              child: Row(
                children: [
                  const Text('Release Date: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(DateFormat.yMMMMd('en_US')
                      .format(movie.fields.releaseDate)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
              child: Row(
                children: [
                  const Text('Rating: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('${movie.fields.rating}/5'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
              child: Row(
                children: [
                  const Text('Status: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(movie.fields.watched ? 'Watched' : 'Not Watched'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Review: ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(movie.fields.review),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 450,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Back'),
                  ),
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}

