import 'package:flutter/material.dart';
import 'package:loja_virtual/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  final PageController _pageController;

  CustomDrawer(this._pageController);

  @override
  Widget build(BuildContext context) {

    Widget _buildDrawerBackground() => Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(220, 211, 118, 130),
          ),
        );

    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBackground(),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8.0,
                      left: 0.0,
                      child: Text(
                        "Ana Miranda Doces",
                        style: TextStyle(
                            fontSize: 28.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Olá",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: GestureDetector(
                              child: Text(
                                "Entre ou cadastre-se >>",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              ),
                              onTap: () {}, // TODO implementar
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.brown,
              ),
              DrawerTile(Icons.home, "Início", _pageController, 0),
              DrawerTile(Icons.cake, "Categorias", _pageController, 1),
              DrawerTile(Icons.list, "Meus Pedidos", _pageController, 2),
              DrawerTile(Icons.phone, "Contato", _pageController, 3),
              DrawerTile(Icons.settings, "Configurações", _pageController, 4),
            ],
          ),
        ],
      ),
    );
  }
}
