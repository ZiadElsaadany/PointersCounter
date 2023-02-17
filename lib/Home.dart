import 'package:basket_points_counter/cubit/counter_cubit.dart';
import 'package:basket_points_counter/cubit/counter_state.dart';
import 'package:basket_points_counter/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  static String route_name = 'Home';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Names;
    return BlocConsumer < CounterCubit, CounterState> (
      builder:(context , state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Points Counter'),
            backgroundColor: Color(0xFF2B475E),
          ),
          body: SingleChildScrollView(

            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
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
                            '${BlocProvider.of<CounterCubit>(context).teamACounter}'  ,
                            style: const TextStyle(
                                color: Colors.black,

                                fontSize:150
                            ),),
                          SizedBox(height: 20,),

                          TextButton(
                            onPressed: (){
                             BlocProvider.of<CounterCubit>(context).incrementACounter(number: 1);
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
                              BlocProvider.of<CounterCubit>(context).incrementACounter(number:2);

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
                              BlocProvider.of<CounterCubit>(context).incrementACounter(number: 3);

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
                          Text('${BlocProvider.of<CounterCubit>(context).teamBCounter}'  , style:const TextStyle(
                              color: Colors.black,
                              fontSize:150
                          ),),
                          SizedBox(height: 20,),

                          TextButton(
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context).incrementBCounter(number: 1);

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
                              BlocProvider.of<CounterCubit>(context).incrementBCounter(number: 2);

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
                              BlocProvider.of<CounterCubit>(context).incrementBCounter(number: 3);

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
      } ,

      listener: (context,state) {

      } ,
    );
  }
}
