
import 'package:flutter/material.dart';
import 'package:transformatix_task/styles/styles.dart';

class QuizWidget extends StatefulWidget {
  const QuizWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  List<String> images=['assets/1.png','assets/2.png','assets/3.png','assets/4.png','assets/5.png','assets/6.png','assets/7.png','assets/8.png'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: GridView.builder(
          itemCount:images.length ,
          physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.9,
                crossAxisCount: 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
          
            itemBuilder: (BuildContext context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.primary,
                   border: Border.all(color: const Color.fromARGB(255,192,192,192)),
                    borderRadius: BorderRadius.circular(32)),
                    child: Image.asset(images[index],fit: BoxFit.contain,),
              );
            }),
      ),
    );
  }
}

