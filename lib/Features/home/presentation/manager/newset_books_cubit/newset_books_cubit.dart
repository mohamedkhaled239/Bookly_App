import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/bookmodel/bookmodel.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit() : super(NewsetBooksInitial());
}
