import 'package:flutter/material.dart';

import '../base/base_page.dart';
import 'home_viewmodel.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with MixinBasePage<HomeVM> {
  @override
  Widget build(BuildContext context) {
    return builder(() => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Music Player',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 15,
              height: 1.54,
              color: Colors.black,
          ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search)
              onPressed: () {
                // Xử lý sự kiện khi nhấn nút tìm kiếm
              },
            ),
          ],
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topAlbums.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 150,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      topAlbums[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: songList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(songList[index]),
                  // Các thuộc tính khác của ListTile
                );
              },
            ),
          ),
        ],
      ),
    );
    }

  @override
  HomeVM create() {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  void initialise(BuildContext context) {
    // TODO: implement initialise
  }
}


