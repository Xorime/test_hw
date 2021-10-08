import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'package:holywing_test/models/models.dart';

abstract class MusicState extends Equatable {
  const MusicState();

  @override
  List<Object> get props => [];
}

class MusicEmpty extends MusicState {}

class MusicLoading extends MusicState {}

class MusicLoaded extends MusicState {
  final Music music;

  const MusicLoaded({required this.music}) : assert(music != null);

  @override
  List<Object> get props => [music];
}

class MusicError extends MusicState {}
