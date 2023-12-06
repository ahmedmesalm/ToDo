import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo/ui/home/task_list/task_widget.dart';
import 'package:todo/ui/utils/themeApp.dart';
class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarTimeline(
          shrink: false,
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(const Duration(days: 3650)),
          lastDate:DateTime.now().add(const Duration(days: 365)),
          onDateSelected: (date) => print(date),
          leftMargin: 30,
          monthColor: ThemeApp.darkblack,
          dayColor:ThemeApp.darkblack,
          activeDayColor:  Theme.of(context).primaryColor,
          activeBackgroundDayColor:ThemeApp.whiteColor,
          dotsColor: ThemeApp.primary,
          selectableDayPredicate: (date) => true,
          locale: 'en_ISO',
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(20),
              itemCount: 20,
              itemBuilder:(context,index){
                return const TaskWidget() ;
              }, separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                color: Colors.transparent,
                thickness: 5,
              ) ;
          }, ),
        )


      ],
    );
  }
}
