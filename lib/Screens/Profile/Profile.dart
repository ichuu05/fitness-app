import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:fitness_app/Screens/Profile/BasicInformation.dart';
import 'package:fitness_app/Screens/Profile/goal.dart';
import 'package:fitness_app/models/custom_route.dart';
import 'package:fitness_app/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  void handleTap(BuildContext context) {
    Navigator.of(context)
        .push(CustomRoute(builder: (ctx) => BasicInformation()));
  }

  Widget buildColumn(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      leading: Icon(icon),
    );
  }

  Widget buildProfileRow(Size size) {
    return Row(
      children: <Widget>[
        CircularProfileAvatar(
          '',
          elevation: 2,
          // maxRadius: 50,
          radius: 50,
          child: CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
                "https://scontent-vie1-1.cdninstagram.com/v/t51.2885-19/101292696_278815523249225_1135093752491147264_n.jpg?_nc_ht=scontent-vie1-1.cdninstagram.com&_nc_ohc=sCh_E0GkJ8cAX_HkBB0&oh=005798e859b99e2c95e60ea9aa8efc8f&oe=5F51237F"),
          ),
        ),
        SizedBox(width: size.width * 0.05),
        Text('Ujjwal Mishra'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: AppDrawer("ujjwal"),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: <Widget>[
            // row for profile image,name,location
            buildProfileRow(size),
            //bio
            buildColumn('Bio', 'i am ujjwal', Icons.add_a_photo),
            //basic information
            GestureDetector(
              child: buildColumn('Basic Information',
                  'Height,Weight,Age,Gender,Activity', Icons.add_a_photo),
              onTap: () {
                Navigator.of(context).push(CustomRoute(builder: (ctx) => BasicInformation()));
              },
            ),
            //goal
            GestureDetector(child: buildColumn('Goal', 'Gain muscle', Icons.access_alarm),
            onTap: (){
              Navigator.of(context).push(CustomRoute(builder: (ctx) => Goal()));
            },),
            //food perferences
            buildColumn(
              'Food Preferences',
              'Dietary Preference,Allergies,Cuisine',
              Icons.add_a_photo,
            ),
          ],
        ),
      ),
    );
  }
}