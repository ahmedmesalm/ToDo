import 'package:flutter/material.dart';
import 'package:todo/ui/home/settings/settings.dart';
import 'package:todo/ui/home/task_list/add_task_bottomsheet.dart';
import 'package:todo/ui/home/task_list/tasks_list.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = " home screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;
  List<Widget> Tabs = [const TasksList(), const Setting()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'To Do List',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Tabs[selectedindex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (index) {
             selectedindex = index ;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list_rounded,
                  size: 30,
                ),
                label: "Tasks List"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 30,
                ),
                label: "Settings")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         showAddTasks();
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void showAddTasks() {
      showModalBottomSheet(
          context: context,
          builder: (context){
            return const AddTaskBottomSheet();
          }
      );
  }
}
