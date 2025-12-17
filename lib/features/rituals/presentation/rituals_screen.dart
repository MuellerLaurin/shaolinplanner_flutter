import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaolin_planner_new/features/rituals/providers/ritual_provider.dart';
import 'package:shaolin_planner_new/i18n/strings.g.dart';

class RitualsScreen extends ConsumerWidget {
  const RitualsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ritualsAsync = ref.watch(ritualListProvider);

    return Scaffold(
      appBar: AppBar(title: Text(t.rituals.title)),
      body: ritualsAsync.when(
        data: (rituals) {
          if (rituals.isEmpty) {
            return Center(child: Text(t.rituals.no_data));
          }
          return ListView.builder(
            itemCount: rituals.length,
            padding: const EdgeInsets.all(16.0),
            itemBuilder: (context, index) {
              final ritual = rituals[index];
              return Card(
                child: ListTile(
                  title: Text(ritual.title),
                  subtitle: ritual.description != null
                      ? Text(ritual.description!)
                      : null,
                  trailing: Text(
                    '${ritual.duration} ${t.rituals.duration_min}',
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text(t.rituals.error_loading)),
      ),
    );
  }
}
