
import 'package:flutter/material.dart';
import 'package:transformatix_task/styles/styles.dart';

class QuizTypeWidget extends StatefulWidget {
  const QuizTypeWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<QuizTypeWidget> createState() => _QuizTypeWidgetState();
}

class _QuizTypeWidgetState extends State<QuizTypeWidget> {
List<String> quizTypeText=['Live quiz','Normal Quiz','QPL','QFG','Tournament','Any Other'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        physics:const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2.5,
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return ElevatedButton(
              
              onPressed: (){},
              style:ButtonStyle(
                backgroundColor:  MaterialStateProperty.all<Color>(Colors.transparent),
                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24.0),
      side: const BorderSide(color:AppColors.primary)
    )
  )

                  
                 ),
                  child: Center(child: Text(quizTypeText[index],style: TextFonts.secondaryText,)),
            );
          }),
    );
  }
}