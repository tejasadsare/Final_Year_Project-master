import 'package:flutter/material.dart';

class TabIconData {
  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selectedImagePath = '',
    this.isSelected = false,
    this.animationController,
  });

  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;

  AnimationController? animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath: 'assets/auto_service_management_app/Home.png',
      selectedImagePath: 'assets/auto_service_management_app/Home.png',
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/auto_service_management_app/Search.png',
      selectedImagePath: 'assets/auto_service_management_app/Search.png',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/auto_service_management_app/customer-service-agent.png',
      selectedImagePath: 'assets/auto_service_management_app/customer-service-agent.png',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/auto_service_management_app/Menu.png',
      selectedImagePath: 'assets/auto_service_management_app/Menu.png',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];
}
