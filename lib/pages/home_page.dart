import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/pages/pages.dart';
import 'package:spotify_clone/widgets/widgets.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _PagesBody(),
         bottomNavigationBar: NavigationPage() ,
       ),
    );
  }

  
}


class _PagesBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegar = Provider.of<NavegacionModal>(context);
    return PageView(
      controller: navegar.pageControler,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        
        //TabBarHomeScreen(),
        HomeScreen(), 
        Container ( color:  Colors.blue, ),
        Container(  color:  Colors.green,),
        Container( color:  Colors.orange,),
      ],
    );
  }
}