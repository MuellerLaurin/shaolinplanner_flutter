import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:shaolin_planner_new/core/providers/supabase_provider.dart';
import 'package:shaolin_planner_new/core/repositories/profile_repository.dart';
import 'package:shaolin_planner_new/features/auth/domain/app_user.dart';

part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<AuthState> authStateChanges(Ref ref) {
  return ref.watch(supabaseProvider).auth.onAuthStateChange;
}

@Riverpod(keepAlive: true)
Future<AppUser?> currentUser(Ref ref) async {
  // Watch auth state changes to rebuild when user logs in/out
  final authState = await ref.watch(authStateChangesProvider.future);

  final session = authState.session;
  if (session == null) return null;

  final user = session.user;
  // Fetch profile
  return ref.watch(profileRepositoryProvider).getProfile(user);
}
