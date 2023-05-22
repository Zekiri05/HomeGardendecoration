import 'package:flutter/material.dart';
import 'package:homegardendecoration/colors.dart';
import 'package:homegardendecoration/user_interface/screens/widgets/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  child: const CircleAvatar(
                    radius: 60,
                    backgroundImage: ExactAssetImage('assets/images/profile.jpg'),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Constants.primaryColor.withOpacity(.5),
                      width: 5.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: size.width * .3,
                  child: Row(
                    children: [
                      Text(
                        'Muamet',
                        style: TextStyle(
                          color: Constants.blackColor,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                          height: 24,
                          child: Image.asset("assets/images/verified.png")),
                    ],
                  ),
                ),
                Text(
                  'qwerty123@gmail.com',
                  style: TextStyle(
                    color: Constants.blackColor.withOpacity(.3),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: size.height * .7,
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      ProfileWidget(
                        icon: Icons.person,
                        title: 'My Profile',
                      ),
                      ProfileWidget(
                        icon: Icons.mode_night_rounded,
                        title: 'Dark Mode',
                      ),
                      ProfileWidget(
                        icon: Icons.notifications,
                        title: 'Notifications',
                      ),
                      ProfileWidget(
                        icon: Icons.star_outlined,
                        title: 'Rate us',
                      ),
                      ProfileWidget(
                        icon: Icons.share,
                        title: 'Share',
                      ),
                      ProfileWidget(
                        icon: Icons.logout,
                        title: 'Log Out',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
