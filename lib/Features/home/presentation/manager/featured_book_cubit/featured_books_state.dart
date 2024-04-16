import 'package:bookly_app/Features/home/data/models/bookmodel/bookmodel.dart';
import 'package:equatable/equatable.dart';

sealed class FeaturedbooksState extends Equatable {
  const FeaturedbooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedbooksInitial extends FeaturedbooksState {}

final class FeaturedbooksLoading extends FeaturedbooksState {}

final class FeaturedbooksFailure extends FeaturedbooksState {
  final String errMassage;

  const FeaturedbooksFailure(this.errMassage);
}

final class FeaturedbooksSuccess extends FeaturedbooksState {
  final List<Bookmodel> books;

  const  FeaturedbooksSuccess(this.books);
}
