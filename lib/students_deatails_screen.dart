import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wecode_ass8/mocData.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.cityName,
    required this.description,
    required this.imageURL,
  }) : super(key: key);

  final String cityName;
  final String description;
  final String imageURL;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(children: [
          Container(
            // stack(container + icon) tyaya
            child: Ink.image(
              image: NetworkImage(imageURL),
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
////////////////////////////////////////////// am stack a dw shtm te danawa
          IconButton(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 50,
            ),
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ]),
        Center(
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Text(
              cityName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(
              description,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ],
    ));
  }
}
