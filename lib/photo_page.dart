import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({super.key});

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        actions: [
          CupertinoSwitch(
            value: isSwitch,
            onChanged: (value) {
              setState(
                    () {
                  isSwitch = !isSwitch;
                },
              );
            },
          ),
          SizedBox(width: 10),
        ],
        backgroundColor: Colors.blue,
        title: Text('Photo Page'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15),
            Container(
              color: yellow,
            ),
          ],
        ),
      ),
    );
  }
}
