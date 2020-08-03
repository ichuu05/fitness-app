import 'package:fitness_app/Screens/Profile/BasicInformation.dart';
import 'package:fitness_app/Screens/Profile/components/info.dart';
import 'package:fitness_app/Screens/Profile/components/profile_menu_item.dart';
import 'package:fitness_app/Screens/Profile/goal.dart';
import 'package:fitness_app/models/custom_route.dart';
import 'package:fitness_app/size_config.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Info(
            image: "https://scontent-vie1-1.cdninstagram.com/v/t51.2885-19/101292696_278815523249225_1135093752491147264_n.jpg?_nc_ht=scontent-vie1-1.cdninstagram.com&_nc_ohc=sCh_E0GkJ8cAX_HkBB0&oh=005798e859b99e2c95e60ea9aa8efc8f&oe=5F51237F",
                
            name: "Ujjwal Mishra",
            email: "ichuu05@gmail.com",
          ),
          SizedBox(height: SizeConfig.defaultSize * 2), //20
          ProfileMenuItem(
            iconSrc: "assets/icons2/bookmark_fill.svg",
            title: "Saved Foods",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons2/chef_color.svg",
            title: "Super Plan",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons2/language.svg",
            title: "Basic Information",
            press: () {
              Navigator.of(context).push(CustomRoute(builder: (ctx) => BasicInformation()));
            },
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons2/info.svg",
            title: "My Goal",
            press: () {
              Navigator.of(context).push(CustomRoute(builder: (ctx) => Goal()));
            },
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons2/info.svg",
            title: "Logout",
            press: () {
              // Navigator.of(context).push(CustomRoute(builder: (ctx) => Goal()));
            },
          ),
        ],
      ),
    );
  }
}