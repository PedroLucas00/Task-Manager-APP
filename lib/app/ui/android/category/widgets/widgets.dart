import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CategoryCard(icon, title, subtitle, color) {
  return GestureDetector(
    child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(169, 169, 169, 0.2),
              offset: new Offset(2.0, 2.0),
              blurRadius: 15,
            )
          ]),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(169, 169, 169, 0.2),
                    offset: new Offset(2.0, 2.0),
                    blurRadius: 15,
                  )
                ]),
            child: Icon(
              icon,
              color: color,
            ),
          ),
          Expanded(
            child: ListTile(
              title: Text(title,
                  style:
                      TextStyle(color: Colors.black, fontFamily: 'Nunito-bold')),
              subtitle: Text(subtitle),
            ),
          )
        ],
      ),
    ),
  );
}
