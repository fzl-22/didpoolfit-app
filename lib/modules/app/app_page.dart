import 'package:didpoolfit/global/widgets/icons/bottom_navbar_icon.dart';
import 'package:didpoolfit/modules/activity/activity_page.dart';
import 'package:didpoolfit/modules/camera/camera_page.dart';
import 'package:didpoolfit/modules/home/home_page.dart';
import 'package:didpoolfit/modules/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const ActivityPage(),
    const CameraPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentPageIndex,
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: BottomNavigationBarIcon(
              icon: IconlyLight.home,
            ),
            activeIcon: BottomNavigationBarIcon(
              icon: IconlyBold.home,
              isActive: true,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: BottomNavigationBarIcon(
              icon: IconlyLight.activity,
            ),
            activeIcon: BottomNavigationBarIcon(
              icon: IconlyBold.activity,
              isActive: true,
            ),
            label: "Activity"
          ),

          BottomNavigationBarItem(
            icon: BottomNavigationBarIcon(
              icon: IconlyLight.camera,
            ),
            activeIcon: BottomNavigationBarIcon(
              icon: IconlyBold.camera,
              isActive: true,
            ),
            label: "Camera",
          ),
          BottomNavigationBarItem(
            icon: BottomNavigationBarIcon(
              icon: IconlyLight.profile,
            ),
            activeIcon: BottomNavigationBarIcon(
              icon: IconlyBold.profile,
              isActive: true,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
