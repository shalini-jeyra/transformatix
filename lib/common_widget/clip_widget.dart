
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'get_clip.dart';

class ClipWidget extends StatefulWidget {
  const ClipWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ClipWidget> createState() => _ClipWidgetState();
}

class _ClipWidgetState extends State<ClipWidget> {
 bool _switchValue=false;

  @override
  Widget build(BuildContext context) {
    
    return ClipPath(
      clipper: Customshape(),
      child: Container(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // drawer menu
              Container(
                height: 40,
                width: 40,
                child: const Icon(
                  Icons.menu,
                  color: Color(0xff0A69D0),
                ),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),

              // profile
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color(0xff0A69D0), width: 2)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'John Doe',
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Color(0xff0A69D0),
                          ),
                          Text('10')
                        ],
                      )
                    ],
                  )
                ],
              ),
              // Toggle switch
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Cash mode'),
                  RotatedBox(
                    quarterTurns: 45,
                    child: CupertinoSwitch(
                      thumbColor: const Color(0xff0A69D0),
                      trackColor: Colors.white,
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                  ),
                  Text('free mode'),
                ],
              ),
              // cash add
              Stack(
                children: [
                  Container(
                    height: 40,
                    width: 80,
                    child: Center(child: Text('Rs.1222')),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            color: const Color(0xff0A69D0), width: 2)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:60),
                    child: Container(
                      height: 40,
                      width: 40,
                      child: const Icon(
                        Icons.add_circle_outline_outlined,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Colors.white, width: 2)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 8, color: Colors.white),
          ),
          color: Color(0xff07136B),
        ),
      ),
    );
  }
}