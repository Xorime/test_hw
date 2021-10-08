import 'package:equatable/equatable.dart';

abstract class MusicEvent extends Equatable {
  const MusicEvent();
}

class FetchMusic extends MusicEvent {
  const FetchMusic();

  @override
  List<Object> get props => [];
}
