import 'package:flutter/material.dart';
import 'package:wecode_ass8/mocData.dart';
import 'package:wecode_ass8/students_deatails_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        centerTitle: true,
        title: const Text(
          "Kurdistan Cities",
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
          itemCount: mockData.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: InkWell(
                      splashColor: Colors.pink[50],
                      onTap: () {},
                      child: Ink.image(
                        image: NetworkImage(
                            mockData[index]["profileImage"].toString()),
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

////////////////////////////////////////////////////
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(50, 172, 50, 0),
                  child: FlatButton(
                    minWidth: 175,
                    child: Text(
                      mockData[index]["cityName"].toString(),
                      style: TextStyle(fontSize: 20.0),
                    ),
                    padding: const EdgeInsets.all(20.0),
                    color: Colors.blueAccent,
                    textColor: Colors.white,

                    //////
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            imageURL:
                                mockData[index]["profileImage"].toString(),
                            cityName: mockData[index]["cityName"].toString(),
                            description:
                                mockData[index]["description"].toString(),
                          ),
                        ),
                      );
                      /////
                    },
                  ),
                ),
              ],
            );
          }),
    );
  }
}
/*
FlatButton(
                      child: Text(
                        mockData[index]["cityName"].toString(),
                        style: TextStyle(fontSize: 20.0),
                      ),
                      padding: const EdgeInsets.all(20.0),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {},
                    ), */
