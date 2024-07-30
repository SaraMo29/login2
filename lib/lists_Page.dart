import 'package:flutter/material.dart';

class ListsPage extends StatelessWidget {
  ListsPage({Key? key}) : super(key: key);

  final List<String> imagePaths = [
    'lib/images/pic1.jpeg',
    'lib/images/app.jpeg',
    'lib/images/ainshams.png',
    'lib/images/science.jpeg',
    'lib/images/pic1.jpeg',
    'lib/images/app.jpeg',
    'lib/images/ainshams.png',
    'lib/images/science.jpeg',
    'lib/images/pic1.jpeg',
    'lib/images/app.jpeg',
    'lib/images/ainshams.png',
    'lib/images/science.jpeg',
    'lib/images/pic1.jpeg',
    'lib/images/app.jpeg',
    'lib/images/ainshams.png',
    'lib/images/science.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lists')),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.green,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(imagePaths[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 20), 
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: Text(
                    'Text $index',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                );
              },
              childCount: 10, 
            ),
          ),
        ],
      ),
    );
  }
}
