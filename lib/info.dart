import 'package:basket_points_counter/Home.dart';
import 'package:flutter/material.dart';
class FirstScreen extends StatelessWidget {
static String route_name = 'Info' ;
String name1 = '' ;
String name2 = '' ;
GlobalKey<FormState> formController = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Points Counter'),
        backgroundColor:const Color(0xFF2B475E),
      ),
     body: SingleChildScrollView(
       child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100.0,bottom: 50),
            child: Text('Welcome', style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
                    color: Color(0xFF2B475E)
            ),

            ),
          ),
       Padding(
         padding: const EdgeInsets.all(12.0),
         child: Form(
             key:formController,
             child: Column(children: [
           TextFormField(
             onChanged: ( value){
               name1 =value;
  },
             validator: (text){
               if(text==null || text.isEmpty ){
                 return 'please enter a team name ' ;
               }
             },
             decoration: InputDecoration(

               border: OutlineInputBorder(
                 borderRadius:  BorderRadius.circular(25.0),
               ),
               filled: true ,
               fillColor: Colors.white,
               hintText:'enter your team name',
               hintStyle: const TextStyle(
                   color: Colors.black ,
                   fontWeight: FontWeight.w400
               ),
               labelText: 'name1 *',
               labelStyle: const TextStyle(
                   color: Color(0xFF2B475E)
               ),


             ),
           ),
           const SizedBox(height: 20,),
           TextFormField(
             onChanged: (value){
               name2 = value ;
             },
             validator: (text){
               if(text==null || text.isEmpty ){
                 return 'please enter a team name ' ;
               }
             },
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderRadius: new BorderRadius.circular(25.0),
               ),
               filled: true ,
               fillColor: Colors.white,
               hintText:'enter your team name',
               hintStyle:const TextStyle(
                   color: Colors.black ,
                   fontWeight: FontWeight.w400
               ),
               labelText: 'name2 *',
               labelStyle: const TextStyle(
                   color: Color(0xFF2B475E)
               ),


             ),
           ),
         ],)),
       ),
         Padding(
           padding: const EdgeInsets.all(30.0),
           child: ElevatedButton(
               onPressed: (){
                  if(formController.currentState?.validate()==true) {
                    Navigator.of(context).pushNamed(Home.route_name,arguments:
                    Names(name1, name2)
                    );
                  }
               },
             style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all(const Color(0xFF2B475E)),
               padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                 vertical: 10 , horizontal: 50
               )),
             ),
               child: const Text('GO', style: TextStyle(fontSize: 20),),
           ),
         ) ,

        ],
       ),
     ),
    );
  }
}
class Names { 
  String name1 ;
  String name2 ;
  Names(this.name1 , this.name2); 
}  
