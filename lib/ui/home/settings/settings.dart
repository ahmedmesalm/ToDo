import 'package:flutter/material.dart';

import '../../utils/themeApp.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Language',style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: ThemeApp.darkAccent
          ),),
          Container(
            margin: const EdgeInsets.only(top: 10,bottom: 15),
            decoration:  BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(),

            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('English',style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: ThemeApp.primary
                  ),),
                  const Icon(Icons.arrow_downward)
                ],
              ),
            ),
          ),
          Text('Mode',style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: ThemeApp.darkAccent
          ),),
          Container(
            margin: const EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(),
              ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('light',style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: ThemeApp.primary
                  ),),
                  const Icon(Icons.arrow_downward)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
