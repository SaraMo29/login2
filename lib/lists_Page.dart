import 'package:flutter/material.dart';

class ListsPage extends StatelessWidget {
  ListsPage({Key? key}) : super(key: key);
  final List<String> imagePaths = [
    'lib/images/pic1.jpeg',
    'lib/images/app.jpeg',
    'lib/images/ainshams.png',
    'lib/images/science.jpeg'
        'lib/images/pic1.jpeg',
    'lib/images/app.jpeg',
    'lib/images/ainshams.png',
    'lib/images/science.jpeg',
    'lib/images/pic1.jpeg',
    'lib/images/app.jpeg',
    'lib/images/ainshams.png',
    'lib/images/science.jpeg'
        'lib/images/pic1.jpeg',
    'lib/images/app.jpeg',
    'lib/images/ainshams.png',
    'lib/images/science.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lists')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
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
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: Text(
                    'Text $index',
                    style: TextStyle(fontSize: 20),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
