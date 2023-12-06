import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo/ui/utils/themeApp.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height ;
    double width = MediaQuery.of(context).size.width ;
    return Slidable(
    startActionPane:
    ActionPane(
     extentRatio: .3 ,
    motion: const ScrollMotion(),
    children:  [
    SlidableAction(
    borderRadius:
    const BorderRadius.only(
      topLeft: Radius.circular(25),
      bottomLeft: Radius.circular(25),
    ),
    onPressed: (context){

    },
    backgroundColor: const Color(0xFFFE4A49),
    foregroundColor: Colors.white,
    icon: Icons.delete,
    label: 'Delete',
    ),
    ],),
      child: Container(
        height: height * .14,
        // margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: ThemeApp.whiteColor,
          ),
          child:
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const VerticalDivider(
                color: ThemeApp.primary,
                thickness: 5,
                width: 30,
                // indent: 15,
                // endIndent: 15,
              ),
                Expanded(
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('play basket ball',
                        style: Theme.of(context).textTheme.titleLarge?.
                        copyWith(
                          color: ThemeApp.primary,
                          fontSize: 20
                        )
                     ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:7.0,left: 10),
                      child: Text('DESc',style: Theme.of(context).textTheme.titleMedium?.
                      copyWith(
                        color: ThemeApp.darkAccent,
                        fontSize: 16
                      ),),
                    ),
                  ],
              ),
               ),
              Container(
                height: height * .06,
                width: width * .2,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ThemeApp.primary
                ),
                child: const Icon(Icons.check,color: Colors.white,size: 30,),

              )
            ],
          ),
      ),
    );
  }
}
