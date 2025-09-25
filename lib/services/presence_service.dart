// lib/services/presence_service.dart

import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:resto2/providers/auth_providers.dart';

class PresenceService {
  final FirebaseDatabase _database;
  final Ref _ref;

  StreamSubscription? _connectionSubscription;
  DatabaseReference? _userStatusRef;
  ProviderSubscription? _userSubscription;

  PresenceService(this._database, this._ref) {
    _init();
  }

  void _init() {
    // Listen for changes in the authenticated user's state.
    _userSubscription = _ref.listen(currentUserProvider, (_, next) {
      // **THE FIX IS HERE:**
      // We now safely handle the AsyncValue. We only proceed if the state
      // has data (i.e., is not loading or in an error state).
      if (next.hasValue) {
        final user = next.value;
        if (user != null && user.sessionToken != null) {
          _goOnline(user.uid, user.sessionToken!);
        }
      }
    }, fireImmediately: true);
  }

  void _goOnline(String uid, String sessionToken) {
    _userStatusRef = _database.ref('status/$uid');

    final isOffline = {
      'state': 'offline',
      'last_changed': ServerValue.timestamp,
    };

    final isOnline = {
      'state': 'online',
      'last_changed': ServerValue.timestamp,
      'sessionToken': sessionToken,
    };

    // Cancel any previous listener to avoid multiple connections.
    _connectionSubscription?.cancel();
    _connectionSubscription = _database.ref('.info/connected').onValue.listen((
      event,
    ) {
      if (event.snapshot.value == false) {
        return;
      }

      _userStatusRef?.onDisconnect().set(isOffline).then((_) {
        _userStatusRef?.set(isOnline);
      });
    });
  }

  /// Manually sets the user's status to offline and cancels the onDisconnect handler.
  Future<void> goOffline() async {
    // Stop listening to the connection state.
    _connectionSubscription?.cancel();
    _connectionSubscription = null;

    if (_userStatusRef != null) {
      final isOffline = {
        'state': 'offline',
        'last_changed': ServerValue.timestamp,
      };
      await _userStatusRef!.set(isOffline);
      await _userStatusRef!.onDisconnect().cancel();
      _userStatusRef = null;
    }
  }

  /// Clean up listeners when the provider is disposed.
  void dispose() {
    _connectionSubscription?.cancel();
    _userSubscription?.close();
  }
}

// Ensure the service's dispose method is called when the provider is disposed.
final presenceServiceProvider = Provider<PresenceService>((ref) {
  final database = FirebaseDatabase.instance;
  final service = PresenceService(database, ref);
  ref.onDispose(() => service.dispose());
  return service;
});
