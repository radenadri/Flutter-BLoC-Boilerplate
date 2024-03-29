import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_number_trivia/core/error/failures.dart';
import 'package:flutter_bloc_number_trivia/core/utils/usecase_helper.dart';
import 'package:flutter_bloc_number_trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_bloc_number_trivia/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  const Params({required this.number});

  @override
  List<Object?> get props => [number];
}
