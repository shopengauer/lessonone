

class AppState {

  final List<String> tickers;

  AppState(this.tickers);

  factory AppState.initial() => AppState(List.unmodifiable([]));

}
