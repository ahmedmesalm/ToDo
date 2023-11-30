import 'package:flutter/material.dart';
import 'package:todo/ui/utils/themeApp.dart';


class AddTaskBottomSheet extends StatefulWidget {
  const AddTaskBottomSheet({super.key});

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  DateTime selectedDate = DateTime.now() ;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child:  Column(
        children: [
          Text('Add New Task' ,
            style:Theme.of(context).textTheme.titleMedium),
          Form(
             child:Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top:8,left: 15),
                   child: TextFormField(
                     validator: (text){
                       if(text == null || text!.isEmpty){
                         return " Please Enter Tska Title" ;
                       }return null ;
                     },
                     style: Theme.of(context).textTheme.titleSmall?.
                     copyWith(color:ThemeApp.darkblack ),
                     decoration:InputDecoration(
                       hintText: 'Enter Task Tile' ,
                       hintStyle: Theme.of(context).textTheme.titleSmall
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10,left: 15),
                   child: TextFormField(
                     style: Theme.of(context).textTheme.titleSmall?.
                     copyWith(color:ThemeApp.darkblack ),
                     validator: (text){
                       if(text == null || text!.isEmpty){
                         return " Please Enter Task Description" ;
                       }return null ;
                     },
                     decoration:InputDecoration(
                        hintText: 'Enter Task Description' ,
                        hintStyle: Theme.of(context).textTheme.titleSmall,
                     ),
                     maxLines: 3,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 15,top: 10),
                   child: Text("Select Date",
                     style: Theme.of(context).textTheme.titleMedium,),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(12),
                   child: GestureDetector(
                     onTap: (){
                       showCalender ();
                     },
                     child: Text("${selectedDate.day}"
                         "/${selectedDate.month}/${selectedDate.year}",textAlign: TextAlign.center,
                         style: Theme.of(context).textTheme.titleMedium),
                   ),
                 ),
                 ElevatedButton(
                     onPressed: (){},
                    child: Text("Add",
                      style: Theme.of(context).textTheme.titleLarge ,))
               ],
             ) )
        ],
      ),
    );
  }

  void showCalender()async{
    var chosenDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 3650))
    );
         if(chosenDate != null) {
           selectedDate = chosenDate ;
           setState(() {});
         }
  }
}
