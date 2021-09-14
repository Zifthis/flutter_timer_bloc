class Ticker {
  const Ticker();

  ///the ticker will be data source for the timer app.
  ///it will expose a stream of ticks which we can
  ///subscribe and react to.
  ///Ticker class all what it does is expose a tick function which
  ///takes the number of ticks, we want to return streams which
  ///emits the remaining seconds every second.

  Stream<int> tick({required int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}
