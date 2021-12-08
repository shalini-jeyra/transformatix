import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transformatix_task/common_widget/clip_widget.dart';
import 'package:transformatix_task/common_widget/common_widget.dart';
import 'package:transformatix_task/common_widget/curve.dart';
import 'package:transformatix_task/pages/home_page/home_page_components/home_page_components.dart';
import 'package:transformatix_task/styles/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        toolbarHeight: 130,
        elevation:0.0,
        flexibleSpace: ClipWidget(),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.quaternary, AppColors.ternary],
            ),
          ),
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, int index) {
                    return Stack(
                      children: [
                        Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            'assets/Avengers.png',
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 3,
                          margin: const EdgeInsets.all(10),
                        ),
                        Positioned(
                            left: 20,
                            bottom: 60,
                            child: Text(
                              'Marvel\'s \nAvenger Quiz',
                              style: TextFonts.primaryText,
                            )),
                        Positioned(left: 20, bottom: 50, child: progressBar),
                        Positioned(
                            left: 20,
                            bottom: 20,
                            child: Text(
                              '2.9/10',
                              style: TextFonts.primaryText,
                            ))
                      ],
                    );
                  },
                ),
              ),
              const QuizTypeWidget(),
              const QuizWidget(),
              const BottomCurves(),
         
            ],
          ),
        ),
      ),
    );
  }

  Widget get progressBar {
    return Stack(children: <Widget>[
      Container(
        height: 4,
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
      Container(
        height: 4,
        width: 70,
        decoration: const BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
      ),
    ]);
  }
}

