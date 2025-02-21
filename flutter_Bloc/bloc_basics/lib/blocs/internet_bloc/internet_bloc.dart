import 'dart:async';

import 'package:bloc_basics/blocs/internet_bloc/internet_event.dart';
import 'package:bloc_basics/blocs/internet_bloc/internet_state.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  Connectivity _connectivity = Connectivity();
  StreamSubscription?
      connectivitySubscription; //listen will not get end with the bloc that will affect the productivity of application that need to be close like this

  InternetBloc()
      : super(
          //initialized a bloc, super means extending a stateless widget
          InternetInitialState(),
        ) {
    // on is use to say that on this event emit something
    on<InternetLostEvent>(
        (event, emit) => emit(InternetLostState as InternetState));
    on<InternetGainedEvent>(
        (event, emit) => emit(InternetGainedState as InternetState));

    connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        add(InternetGainedEvent());
      } else {
        add(InternetLostEvent());
      }
    });
  }

  @override
  Future<void> close() {
    connectivitySubscription
        ?.cancel(); //adding ? means if it is active then close else let it be
    return super.close();
  }
}
