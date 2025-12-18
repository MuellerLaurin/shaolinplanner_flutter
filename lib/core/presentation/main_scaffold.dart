import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:shaolin_planner_new/core/providers/locale_provider.dart';
import 'package:shaolin_planner_new/features/auth/providers/auth_provider.dart';
import 'package:shaolin_planner_new/features/routines/presentation/routines_screen.dart';
import 'package:shaolin_planner_new/features/settings/presentation/settings_screen.dart';
import 'package:shaolin_planner_new/i18n/strings.g.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MainScaffold extends ConsumerStatefulWidget {
  const MainScaffold({super.key});

  @override
  ConsumerState<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends ConsumerState<MainScaffold> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Watch localeProvider to trigger rebuild on language change
    final _ = ref.watch(localeProvider);

    return AdaptiveScaffold(
      selectedIndex: _selectedIndex,
      onSelectedIndexChange: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.dashboard_outlined),
          selectedIcon: Icon(Icons.dashboard),
          label: t.nav.dashboard,
        ),
        NavigationDestination(
          icon: Icon(Icons.playlist_play_outlined),
          selectedIcon: Icon(Icons.playlist_play),
          label: t.nav.routines,
        ),
        NavigationDestination(
          icon: Icon(Icons.settings_outlined),
          selectedIcon: Icon(Icons.settings),
          label: t.nav.settings,
        ),
      ],
      body: (context) => _buildBody(_selectedIndex),
    );
  }

  Widget _buildBody(int index) {
    switch (index) {
      case 0:
        return _DashboardPage();
      case 1:
        return const RoutinesScreen();
      case 2:
        return const SettingsScreen();
      default:
        return const SizedBox.shrink();
    }
  }
}

// Simple Dashboard placeholder
class _DashboardPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // We can reuse the HomeScreen logic here or just a simple placeholder
    // The user had a HomeScreen before, let's try to keep some of that functionality relevant or just show the text as requested.
    // Re-implementing basic sign out button for now in the dashboard
    final currentUserAsync = ref.watch(currentUserProvider);

    return Scaffold(
      appBar: AppBar(title: Text(t.nav.dashboard)),
      body: Center(
        child: currentUserAsync.when(
          data: (user) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${t.auth.welcome} ${user?.email ?? 'User'}'),
              if (user?.planId != null) Text('Plan ID: ${user!.planId}'),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () {
                  Supabase.instance.client.auth.signOut();
                },
                child: Text(t.auth.logout),
              ),
            ],
          ),
          loading: () => const CircularProgressIndicator(),
          error: (e, st) => Text('Error: $e'),
        ),
      ),
    );
  }
}
