import 'package:basket_points_counter/Home.dart';
import 'package:basket_points_counter/info.dart';
import 'package:flutter/material.dart';

void main ( )  {

  runApp(const BasketPointsCounter());

}
class BasketPointsCounter extends StatelessWidget {
  const BasketPointsCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: FirstScreen(),
      routes: {
        Home.route_name:(context)=>Home() ,
        FirstScreen.route_name:(context)=>FirstScreen() ,
      },
    );
  }
}
