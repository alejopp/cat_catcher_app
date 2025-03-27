import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final connectivityProvider =
    StateNotifierProvider<ConnectivityNotifier, ConnectivityState>(
  (ref) => ConnectivityNotifier(),
);

class ConnectivityNotifier extends StateNotifier<ConnectivityState> {
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<List<ConnectivityResult>>? _subscription;

  ConnectivityNotifier() : super(ConnectivityState(connections: [])) {
    _startListening();
  }

  void _startListening() {
    _subscription = _connectivity.onConnectivityChanged
        .listen((List<ConnectivityResult> result) {
      if (state.connections != result) {
        state = state.copyWith(connections: result);
      }
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

class ConnectivityState {
  final List<ConnectivityResult> connections;

  ConnectivityState({
    required this.connections,
  });

  bool get isConnected =>
      connections.any((result) => result != ConnectivityResult.none);

  ConnectivityState copyWith({
    List<ConnectivityResult>? connections,
  }) {
    return ConnectivityState(
      connections: connections ?? this.connections,
    );
  }
}
