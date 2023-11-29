import 'package:flutter/material.dart';
import 'package:todo/ui/home/settings/settings.dart';
import 'package:todo/ui/home/task_list/tasks_list.dart';


class HomeScreen extends StatefulWidget {
  static const routeName = " home screen" ;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0 ;

  List<Widget> Tabs = [TasksList() , Setting()] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('To Do List' ,style: Theme.of(context).textTheme.titleLarge,),
      ),
      body: Tabs[selected],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: selected,
          onTap: (index){
            index = selected ;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list_rounded,size: 30,),
                label: "Tasks List"),
            BottomNavigationBarItem(icon:Icon(Icons.settings,size: 30,)
                ,label: "Settings")

          ],),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      child: Icon(Icons.add),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
