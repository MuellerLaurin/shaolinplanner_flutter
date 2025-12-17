import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:shaolin_planner_new/core/presentation/main_scaffold.dart';
import 'package:shaolin_planner_new/core/providers/theme_provider.dart';
import 'package:shaolin_planner_new/features/auth/presentation/login_screen.dart';
import 'package:shaolin_planner_new/features/auth/providers/auth_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // TODO: Replace with actual URL and Anon Key from your Supabase project settings
  await dotenv.load(fileName: ".env");
  await Supabase.initialize(
    // url: dotenv.env['SUPABASE_URL']!,
    // anonKey: dotenv.env['SUPABASE_ANONKEY']!,
    url: dotenv.env['NEXT_PUBLIC_SUPABASE_URL']!,
    anonKey: dotenv.env['NEXT_PUBLIC_SUPABASE_ANON_KEY']!,
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final lightTheme = ref.watch(lightThemeProvider);
    final darkTheme = ref.watch(darkThemeProvider);

    return MaterialApp(
      title: 'Shaolin Planner',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      home: const AuthGate(),
    );
  }
}

class AuthGate extends ConsumerWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateChangesProvider);

    return authState.when(
      data: (state) {
        if (state.session != null) {
          return const MainScaffold();
        }
        return const LoginScreen();
      },
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, st) => Scaffold(body: Center(child: Text('Error: $e'))),
    );
  }
}

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUserAsync = ref.watch(currentUserProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Supabase.instance.client.auth.signOut();
            },
          ),
        ],
      ),
      body: Center(
        child: currentUserAsync.when(
          data: (user) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello ${user?.email ?? 'User'}'),
              if (user?.planId != null) Text('Plan ID: ${user!.planId}'),
            ],
          ),
          loading: () => const CircularProgressIndicator(),
          error: (e, st) => Text('Error loading profile: $e'),
        ),
      ),
    );
  }
}
