// import 'package:meta/meta.dart';
// import 'package:bloc/bloc.dart';

// import 'package:holywing_test/repositories/repositories.dart';
// import 'package:holywing_test/models/models.dart';
// import 'package:holywing_test/bloc/bloc.dart';

// import 'music_event.dart';
// import 'music_state.dart';

// class MusicBloc extends Bloc<MusicEvent, MusicState> {
//   final MusicRepository repository;

//   // ignore: unnecessary_null_comparison
//   MusicBloc({required this.repository}) : assert(repository != null);

//   @override
//   MusicState get initialState => MusicEmpty();

//   @override
//   Stream<MusicState> mapEventToState(MusicEvent event) async* {
//     if (event is FetchMusic) {
//       yield MusicLoading();
//       try {
//         final Music music = await repository.fetchMusic();
//         yield MusicLoaded(music: music);
//       } catch (_) {
//         yield MusicError();
//       }
//     }
//   }
// }
