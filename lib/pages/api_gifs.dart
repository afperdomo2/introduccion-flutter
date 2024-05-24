import 'dart:convert';

import 'package:app_curso_flutter/models/gif.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<Gif>> gifList;

  Future<List<Gif>> getGifs() async {
    String url =
        'https://api.giphy.com/v1/gifs/trending?api_key=EPGJ8AxYQ6gM3YEHNISUWg0mCVdjKgHS&limit=10&offset=0&rating=g&bundle=messaging_non_clips';
    final response = await http.get(Uri.parse(url));

    List<Gif> gifs = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);
      for (var item in jsonData['data']) {
        String title = item['title'];
        String gifUrl = item['images']['fixed_height']['url'];
        gifs.add(Gif(title, gifUrl));
      }
      return gifs;
    } else {
      throw Exception('Failed to load gifs');
    }
  }

  @override
  void initState() {
    super.initState();
    gifList = getGifs();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Api Giphys 22'),
        ),
        body: FutureBuilder(
          future: gifList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                children: buildGifList(snapshot.data as List<Gif>),
              );
            } else if (snapshot.hasError) {
              return const Text("Error al cargar los gifs");
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  List<Widget> buildGifList(List<Gif> gifs) {
    List<Widget> gifWidgets = [];
    for (var gif in gifs) {
      gifWidgets.add(Card(
        child: Column(
          children: [
            Image.network(gif.url),
            Padding(padding: const EdgeInsets.all(8), child: Text(gif.name)),
          ],
        ),
      ));
    }
    return gifWidgets;
  }
}

// Column(
//           children: [
//             Text(gif.name),
//             Image.network(gif.url),
//           ],
//         ),
