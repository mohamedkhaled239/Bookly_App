import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/home/presentation/manager/featured_book_cubit/featured_books_state.dart';
import 'package:bloc/bloc.dart';

class FeaturedbooksCubit extends Cubit<FeaturedbooksState> {
  FeaturedbooksCubit(this.homeRepo) : super(FeaturedbooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedbooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
        (failure) => emit(
              FeaturedbooksFailure(failure.errMessage),
            ), (books) {
      emit(
        FeaturedbooksSuccess(books),
      );
    });
  }
}
