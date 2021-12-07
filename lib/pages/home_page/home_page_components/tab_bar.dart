import 'package:flutter/material.dart';
import 'package:transformatix_task/styles/styles.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({ Key? key }) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> with TickerProviderStateMixin {
 late TabController tabController;
@override
  void initState() {
    tabController=TabController(length: 3, vsync: this);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 500,
      child: Column(
        children: [
          TabBar(
                    indicatorWeight: 2,
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    labelPadding: const EdgeInsets.all(0),
                    indicatorSize: TabBarIndicatorSize.tab,
                    isScrollable: false,
                    unselectedLabelColor: AppColors.quaternary,
                    labelColor: AppColors.primary,
                    labelStyle:TextFonts.primaryText,
                    unselectedLabelStyle: TextFonts.ternaryText,
                    controller: tabController,
                    indicatorPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    indicator: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    
                    ),
                    tabs: const <Widget>[
                      Tab(
                        child: Text(
                       'This Month',
                        ),
                      ),
                      Tab(
                        child: Text(
                         'This Week',
                        ),
                      ),
                      Tab(
                        child:
                            Text('Today'),
                      ),
                    ],
                  ),
                  TabBarView(
                controller: tabController,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.black12,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.black26,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.black38,
                  )
                ],
              ),
        ],
        
      ),
    );
  }
}