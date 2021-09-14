part of 'timer_bloc.dart';

@immutable
abstract class TimerState extends Equatable {
  final int duration;

  const TimerState(this.duration);

  @override
  List<Object> get props {
    return [duration];
  }
}

/// 1.) if the state is TimerInitial the user will be able to
/// start the timer.
///
/// 2.) if the state is TimerRunInProgress the user will be able to
/// pause and reset the timer as well as see the remaining duration.
///
/// 3.) if the state is TimerRunPause the user will be able to
/// resume the timer and reset the timer.
///
/// 4.) if the state is TimerRunComplete the user will be able to
/// reset the timer.

class TimerInitial extends TimerState {
  const TimerInitial(int duration) : super(duration);

  @override
  String toString() {
    // TODO: implement toString
    return 'TimerInitial { duration: $duration}';
  }

}

class TimerRunInProgress extends TimerState{
  const TimerRunInProgress(int duration) : super(duration);

  @override
  String toString() {
    // TODO: implement toString
    return 'TimerRunInProgress { duration: $duration}';
  }

}

class TimerRunPause extends TimerState{
  const TimerRunPause(int duration) : super(duration);

  @override
  String toString() {
    // TODO: implement toString
    return 'TimerRunPause { duration: $duration}';
  }

}

class TimerRunComplete extends TimerState{
  const TimerRunComplete() : super(0);
}