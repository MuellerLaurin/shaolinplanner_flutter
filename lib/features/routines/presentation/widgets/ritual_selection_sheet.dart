import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaolin_planner_new/features/rituals/providers/ritual_provider.dart';
import 'package:shaolin_planner_new/i18n/strings.g.dart';

class RitualSelectionSheet extends ConsumerWidget {
  const RitualSelectionSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ritualsAsync = ref.watch(ritualListProvider);

    return Container(
      padding: const EdgeInsets.only(top: 16),
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              t.rituals.title, // 'Rituals' or 'Select Ritual' if available
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ritualsAsync.when(
              data: (rituals) {
                if (rituals.isEmpty) {
                  return Center(child: Text(t.rituals.no_data));
                }
                return ListView.builder(
                  itemCount: rituals.length,
                  itemBuilder: (context, index) {
                    final ritual = rituals[index];
                    return ListTile(
                      title: Text(ritual.title),
                      subtitle: Text(
                        t.routines.duration(minutes: ritual.duration.toInt()),
                      ),
                      onTap: () {
                        Navigator.pop(context, ritual);
                      },
                    );
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, st) => Center(child: Text('Error: $e')),
            ),
          ),
        ],
      ),
    );
  }
}
