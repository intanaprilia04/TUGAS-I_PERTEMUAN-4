import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final String name;

  Profile({required this.name});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State< Profile> {
  TextEditingController nameController = new TextEditingController();
  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
            print('Back to previous page');
          },
        ),
      title: Text('Profile'),
      centerTitle: true,
      ),
      body: Container(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 75,
          backgroundImage: NetworkImage(
            'image-classification-input.jpeg'
            ),
        ),
      SizedBox(
        height: 25,
        ) ,  
      Center(
      child: Text(
        widget.name, 
        style: TextStyle(
        fontSize: 25,
        ),
        )),
      ],
      ),
      ),
      );
  }
}

