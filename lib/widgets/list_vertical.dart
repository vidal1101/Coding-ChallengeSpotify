import 'package:flutter/material.dart';

class ListCutomHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 150,
      child: ListView.separated(
        shrinkWrap: true, 
        scrollDirection: Axis.horizontal,
        itemCount: 25,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Container(color:  Colors.amber,  height: 50,);
        },
      ),
    );
  }
}
