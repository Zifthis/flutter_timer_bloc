part of 'timer_bloc.dart';

//TimerEvent WILL NEED TO KNOW HOW TO PROCESS THE FOLLOWING EVENTS:

@immutable
abstract class TimerEvent extends Equatable {

  const TimerEvent();

  @override
  List<Object> get props => [];
}

/// 1.)TimerStarted—informs the TimerBloc that the timer should be started.
///
/// 2.)TimerPaused—informs the TimerBloc that the timer should be paused.
///
/// 3.)TimerResumed—informs the TimerBloc that the timer should be resumed.
///
/// 4.)TimerReset—informs the TimerBloc that the timer should be
/// reset to the original state.
///
/// 5.)TimerTicked—informs the TimerBloc that a tick has occurred
/// and that it needs to update its state accordingly

class TimerStarted extends TimerEvent {
  final int duration;
  const TimerStarted({required this.duration});
}

class TimerPaused extends TimerEvent{
  const TimerPaused();
}

class TimerResumed extends TimerEvent{
  const TimerResumed();
}

class TimerReset extends TimerEvent{
  const TimerReset();
}

class TimerTicked extends TimerEvent{
  final int duration;
  TimerTicked({required this.duration});

  @override
  // TODO: implement props
  List<Object> get props => super.props;
}