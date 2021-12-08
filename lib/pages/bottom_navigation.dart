import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transformatix_task/pages/home_page/home_page.dart';
import 'package:transformatix_task/styles/styles.dart';

class BottomNav extends StatefulWidget {
  final int? indexValue;
  const BottomNav({this.indexValue});
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  // ignore: non_constant_identifier_names
  final String PAGE_NAME = 'BOTTOM_NAVIGATION_PAGE';

  int? currentTab = 0;

  // Widget currentScreen = CoursePage();

  @override
  void initState() {
    currentTab = widget.indexValue;
    super.initState();
  }

  final List<Widget> screens = [
    HomePage(),HomePage(),HomePage(),HomePage(),HomePage()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {

   
    return Scaffold(
     
      body: PageStorage(
        child: screens[currentTab!],
        bucket: bucket,
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.10,
        decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
           
          )),
        ),
        child: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            backgroundColor: AppColors.ternary,
            elevation: 0,
      
            currentIndex: currentTab!,
            onTap: (int index) {
              setState(() {
                currentTab = index;
                // currentScreen = screens[index];
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  currentTab==0?"assets/special_pass2.png":"assets/special_pass.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.fill,
                 
                ),
                label: 'Special pass',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Image.asset(
                  currentTab==1?"assets/leaderboard2.png":"assets/leaderboard.png",
                  height: 50,
                  width: 50,
                 
                ),

                label:'leaderboard',
                
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  currentTab==2?"assets/home2.png":"assets/home.png",
                  height: 50,
                  width: 50,
                 
                ),

                label:'home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  currentTab==3?"assets/features2.png":"assets/features.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.fitWidth,
                  
                ),
                label: 'Features',

              ),
               BottomNavigationBarItem(
                icon: Image.asset(
                  currentTab==4?"assets/game_types2.png":"assets/game_types.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.fitWidth,
                  
                ),
                label:'game_types',

              ),
            ],
          ),
        ),
      ),
    );
  }
}