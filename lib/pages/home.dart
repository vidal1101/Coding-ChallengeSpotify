import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
          child: SingleChildScrollView(
            child: Column(

              children: [
                headerTitle(),
                firstListTitle(), 
                ListCutomHorizontal(), 
              ],
            ),
          ),
      );
  }

  Widget headerTitle(){
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15),
      child: Row(
        children: [
          Text('Good evening' , style: Values.textTitle,),
          SizedBox(width: 45,),
          Icon(Icons.notifications_none_rounded , color: Values.colorIcon, size: 30, ), 
           SizedBox(width: 15,),
          Icon(Icons.access_time_rounded , color: Values.colorIcon, size: 30,),
           SizedBox(width: 15,),
          Icon(Icons.settings_outlined, color: Values.colorIcon, size: 30,),
        ],
      ),
    );
  }

  Widget firstListTitle(){
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 15, bottom: 10),
      child: Row(
        children: [
          Text('Recently played' , style: Values.textTitle,),
        ],
      ),
    );
  }
}