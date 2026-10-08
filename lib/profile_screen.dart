import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("shivanz2026"),
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(Icons.more_horiz),
        ],

      ),
      body:Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                    "assets/images/img.jpg",
                height: 100,
                width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Text("174"),
                  Text("Posts")
                ],
              ),
              Column(
                children: [
                  Text("1M"),
                  Text("Followers")
                ],
              ),
              Column(
                children: [
                  Text("400"),
                  Text("Following")
                ],
              )
            ],
          )
        ],
      )
      // bottomNavigationBar: ,
      // floatingActionButton: ,
      // bottomSheet: ,
      // body: ,
    );
  }
}
