import 'package:basket_points_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit( ):super(InitialState());


  int teamACounter = 0;
  int teamBCounter = 0;

  incrementACounter( {required int number } )  {

    teamACounter +=number ;
    emit(CounterAIncrementState());
  }
  incrementBCounter( {required int number } )  {

    teamBCounter +=number ;
    emit(CounterBIncrementState());
  }


}