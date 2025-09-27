// lib/services/presence_service.dart

import 'package:firebase_database/firebase_database.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:resto2/providers/auth_providers.dart';

class PresenceService {
  final FirebaseDatabase _database;
  final Ref _ref;

  // Keep track of the specific user's database reference
  DatabaseReference? _userStatusRef;

  PresenceService(this._database, this._ref) {
    _init();
  }

  void _init() {
    _ref.listen(currentUserProvider, (previous, next) {
      final user = next.asData?.value;
      if (user != null && user.sessionToken != null) {
        _updateUserPresence(user.uid, user.sessionToken!);
      }
    });
  }

  void _updateUserPresence(String uid, String sessionToken) {
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

    _database.ref('.info/connected').onValue.listen((event) {
      if (event.snapshot.value == false) {
        return;
      }

      // This is the original logic that registers the server-side trigger
      _userStatusRef?.onDisconnect().set(isOffline).then((_) {
        // If the connection is successful, set the status to online
        _userStatusRef?.set(isOnline);
      });
    });
  }

  /// **This is the new, simple method for a graceful shutdown.**
  /// It manually sets the user's status to offline *before* logout.
  Future<void> goOffline() async {
    if (_userStatusRef != null) {
      final isOffline = {
        'state': 'offline',
        'last_changed': ServerValue.timestamp,
      };
      // We are not canceling the onDisconnect here, just setting the final state.
      await _userStatusRef?.set(isOffline);
    }
  }
}

final presenceServiceProvider = Provider<PresenceService>((ref) {
  final database = FirebaseDatabase.instance;
  return PresenceService(database, ref);
});
