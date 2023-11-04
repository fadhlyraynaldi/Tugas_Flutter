import 'package:flutter/material.dart';

// ignore: must_be_immutable
class profile extends StatefulWidget {
  String name;

  profile({required this.name});


  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
            print("Back To Previous Page");
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
              backgroundImage: NetworkImage('https://2.bp.blogspot.com/-goahKrx98nY/V9fZjBRjj9I/AAAAAAAAAG0/iZgTopettSQCg9nnKEx9it_lJMPO3twpACLcB/s1600/naruto14.jpeg',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                widget.name,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
