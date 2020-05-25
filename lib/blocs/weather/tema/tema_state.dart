import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TemaState extends Equatable {
  TemaState([List props = const []]) : super(props);
}

class UygulamaTemasi extends TemaState {
  final ThemeData tema;
  final MaterialColor renk;

   MyThemeState({@required  this.tema,@required this.reng});

  @override
  // TODO: implement props
  List<Object> get props => [tema,renk];
}
