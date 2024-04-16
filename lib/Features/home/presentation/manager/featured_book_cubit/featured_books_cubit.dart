import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/presentation/manager/featured_book_cubit/featured_books_state.dart';


class FeaturedbooksCubit extends Cubit<FeaturedbooksState> {
  FeaturedbooksCubit() : super(FeaturedbooksInitial());
}
