import 'package:flutter/material.dart';

class SlideLeft extends  PageRouteBuilder{
  final Widget page;

  SlideLeft({required this.page})
      :super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondAnimation,
    )=> page,
        transitionsBuilder: (
        BuildContext context,
            Animation <double> animation,
            Animation <double> secondAnimation,
            Widget child,
        ) => SlideTransition(position: Tween<Offset> (begin: Offset(1,0), end: Offset.zero).animate(animation),
        child: child,),
  );
}