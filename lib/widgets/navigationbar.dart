import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/widgets/widgets.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // obtengo la instancia de la clase singleton.
    final navegar = Provider.of<NavegacionModal>(context);

    return  Container(
      padding:const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      child: BottomNavigationBar(
          iconSize: 27,
          elevation: 0,
            currentIndex: navegar.paginaActual,
            onTap: (i) {
              print("$i");
              navegar.paginaActual = i;
            },
            items:   <BottomNavigationBarItem> [

              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.home  , color: Values.colorIcon ,  ),
                  ), label:'Home' ,),

              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child:  Icon(Icons.search_rounded  ,  color: Values.colorIcon ),
                  ), label: 'Search'),

              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.line_weight_rounded,  color: Values.colorIcon ),
                  ), label: 'Your Library'),

              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.queue_music ,  color:  Values.colorIcon ),
                  ), label: 'Premium'),
            ]
      ),
    );
  }
}



/**
 * clase con patron mediador singleton. 
 */
class NavegacionModal with ChangeNotifier {
  int _paginaActual = 0;

  PageController _pageController =  PageController();

  int get paginaActual => this._paginaActual;

  PageController get pageControler => this._pageController;

  /**
   * setter para cambiar la pagina actual.
   */
  set paginaActual(int valor) {
    this._paginaActual = valor;
    /**se navega por l paginas porque el getter se establece en el pageview en el controller */
    _pageController.animateToPage(valor,
        duration: Duration(milliseconds: 100), 
        curve: Curves.easeInOut
        );
    notifyListeners();
  }
}