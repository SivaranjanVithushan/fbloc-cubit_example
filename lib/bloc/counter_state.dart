part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class CounterSuccess extends CounterState {}

final class CounterFailure extends CounterState {}

final class CounterLoading extends CounterState {}
