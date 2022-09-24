class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/auto_service_management_app/inventory.png',
      titleTxt: 'Inventory',
      //kacl: 525,
      meals: <String>['Labour,', 'Spare,', 'etc.'],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    MealsListData(
      imagePath: 'assets/auto_service_management_app/report.png',
      titleTxt: 'Reports',
      //kacl: 602,
      meals: <String>['Track', 'your workshop'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    MealsListData(
      imagePath: 'assets/auto_service_management_app/analytics.png',
      titleTxt: 'Analytics',
      //kacl: 0,
      meals: <String>['Business','insights'],
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
    MealsListData(
      imagePath: 'assets/auto_service_management_app/staff.png',
      titleTxt: 'Staff',
      //kacl: 0,
      meals: <String>['Book','Appointment'],
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
  ];
}
