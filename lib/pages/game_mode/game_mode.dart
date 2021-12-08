import 'package:flutter/material.dart';
import 'package:transformatix_task/common_widget/clip_widget.dart';
import 'package:transformatix_task/styles/styles.dart';

class GameMode extends StatefulWidget {
  const GameMode({ Key? key }) : super(key: key);

  @override
  State<GameMode> createState() => _GameModeState();
}

class _GameModeState extends State<GameMode> {
   List<String> images=['assets/list1.png','assets/list2.png','assets/list3.png','assets/list4.png'];
   List<bool> isSelected=[false,false,false];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.quaternary,
        toolbarHeight: 130,
        elevation: 0.0,
        flexibleSpace: ClipWidget(),) ,
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
                    return Column(
                      children: [
                        Container(
                          height: 130,
                          width:90,
                          decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: AppColors.primary
                          ),
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.contain,
                          ),
                          
                          margin: const EdgeInsets.all(10),
                        ),
                      
                      ],
                    );
                  },
                ),
              ),
              Text('Select Game Mode',style: MiniTexts.ternaryText,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)) ,color: Colors.white,),
                  child: ToggleButtons(
                    fillColor: Colors.white,
                    renderBorder: false,
                    borderRadius: BorderRadius.all(Radius.circular(30)) ,
  children: const <Widget>[
    Text('SOLO'),
  Text('VERSES'),Text('Table')
  ],
  onPressed: (int index) {
    setState(() {
      for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
        if (buttonIndex == index) {
          isSelected[buttonIndex] = !isSelected[buttonIndex];
        } else {
          isSelected[buttonIndex] = false;
        }
      }
    });
  },
  isSelected: isSelected,
),
                ),
              ),
          ],),),),
      
    );
  }
}