import 'package:basket_points_counter/info.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String route_name = 'Home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int countA = 0 ;

  int countB = 0 ;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Names;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Points Counter'),
        backgroundColor: Color(0xFF2B475E),
      ),
      body: SingleChildScrollView(

        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                          Text(
                            'Team ${args.name1}',style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                        ),
                          maxLines: 1,),
                         Text(
                           '$countA'  ,
                           style: const TextStyle(
                          color: Colors.black,

                          fontSize:150
                        ),),
                      SizedBox(height: 20,),

                      TextButton(
                          onPressed: (){
                            countA++ ;
                            setState(() {});
                          },  child: const Text(
                          'Add 1 Point' , style: TextStyle(
                          color: Colors.white
                        ),
                        ) ,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xFF2B475E)) ,
                          padding:  MaterialStateProperty.all(EdgeInsets.all(15)) ,
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: (){
                            countA+=2 ;
                            setState(() {});
                          }, child: const Text(
                          'Add 2 Point' , style: TextStyle(
                          color: Colors.white
                        ),
                        ) ,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xFF2B475E)) ,
                          padding:  MaterialStateProperty.all(EdgeInsets.all(15)) ,
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: (){
                            countA+=3;
                            setState(() {
                            });
                          }, child: Text(
                          'Add 3 Point' , style: TextStyle(
                          color: Colors.white
                        ),
                        ) ,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xFF2B475E)) ,
                          padding:  MaterialStateProperty.all(EdgeInsets.all(15)) ,
                        ),
                        ),
                      ],
                    ),
                   Container(
                     height: 400,
                     child: VerticalDivider(
                       color: Colors.grey,
                       indent: 30,
                       endIndent: 10,
                       thickness: 1,

              ),
                   ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Text('Team ${args.name2}',style: TextStyle(
                            color: Colors.black,
                            fontSize: 32
                        ),
                         ),
                         Text('$countB'  , style:const TextStyle(
                          color: Colors.black,
                            fontSize:150
                        ),),
                        SizedBox(height: 20,),

                        TextButton(
                          onPressed: (){
                            countB++ ;
                            setState(() {
                            });
                          }, child: Text(
                          'Add 1 Point' , style: TextStyle(
                          color: Colors.white
                        ),
                        ) ,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xFF2B475E)) ,
                          padding:  MaterialStateProperty.all(EdgeInsets.all(15)) ,
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: (){
                            countB+=2;
                            setState(() {
                            });
                          }, child: Text(
                          'Add 2 Point' , style: TextStyle(
                          color: Colors.white
                        ),
                        ) ,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xFF2B475E)) ,
                          padding:  MaterialStateProperty.all(EdgeInsets.all(15)) ,
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: (){
                            countB+=3;
                            setState(() {

                            });
                          }, child: Text(
                          'Add 3 Point' , style: TextStyle(
                          color: Colors.white
                        ),
                        ) ,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xFF2B475E)) ,
                          padding:  MaterialStateProperty.all(EdgeInsets.all(15)) ,
                        ),
                        ),
                      ],
                    ),

                ],
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: (){
                  countA=0;
                  countB=0;
                  setState(() {});
                },  child: const Text(
                'Reset' , style: TextStyle(
                  color: Colors.white,
                fontSize: 18
              ),
              ) ,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF2B475E)) ,
                  padding:  MaterialStateProperty.all(EdgeInsets.symmetric(
                      vertical: 10, horizontal: 50
                  )) ,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
