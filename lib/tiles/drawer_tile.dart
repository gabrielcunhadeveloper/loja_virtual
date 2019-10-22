import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final PageController _controller;
  final int page;

  DrawerTile(this.icon, this.text, this._controller, this.page);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
          _controller.jumpToPage(page);
        },
        splashColor: Colors.deepOrangeAccent,
        child: Container(
          height: 60.0,
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                size: 32.0,
                color: Colors.white,
              ),
              SizedBox(
                width: 32.0,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
