import 'package:bloc_basics/blocs/internet_bloc/internet_bloc.dart';
import 'package:bloc_basics/blocs/internet_bloc/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        //bloc builder will notify when there is something is changing
        // text will get change on particular event so we only wrapping text with bloc builder
        child: BlocBuilder<InternetBloc, InternetState>(
          builder: (context, state) {
            // if you want to check value use == and if you want to check data type then use is
            if (state is InternetGainedState) {
              return Text('Connected!');
            } else if (state is InternetLostState) {
              return Text("Not Connected!");
            } else {
              return Text("Loading...");
            }
          },
        ),
      )),
    );
  }
}
