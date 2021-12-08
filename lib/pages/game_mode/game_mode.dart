import 'package:flutter/material.dart';
import 'package:transformatix_task/styles/styles.dart';

class GameMode extends StatelessWidget {
  const GameMode({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images=['assets/list1.png','assets/list2.png','assets/list3.png','assets/list4.png'];
    return Scaffold(
      body: SafeArea(child: 
      Container(decoration:  const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.quaternary, AppColors.ternary],
            ),
          ),child: Column(children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, int index) {
                    return Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 3,
                      margin: const EdgeInsets.all(10),
                    );
                  },
                ),
              ),
          ],),),),
      
    );
  }
}