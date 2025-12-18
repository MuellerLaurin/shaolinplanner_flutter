import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaolin_planner_new/features/routines/domain/routine.dart';
import 'package:shaolin_planner_new/features/routines/providers/routine_provider.dart';
import 'package:shaolin_planner_new/features/routines/presentation/routine_edit_screen.dart';
import 'package:shaolin_planner_new/i18n/strings.g.dart';

class RoutinesScreen extends ConsumerWidget {
  const RoutinesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routinesAsync = ref.watch(routineProvider);

    return Scaffold(
      appBar: AppBar(title: Text(t.routines.title)),
      body: routinesAsync.when(
        data: (routines) {
          if (routines.isEmpty) {
            return Center(child: Text(t.routines.no_data));
          }
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: routines.length,
            itemBuilder: (context, index) {
              final routine = routines[index];
              return _RoutineCard(routine: routine);
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('Error: $e')),
      ),
    );
  }
}

class _RoutineCard extends StatelessWidget {
  final Routine routine;

  const _RoutineCard({required this.routine});

  @override
  Widget build(BuildContext context) {
    // Sort rituals by order_nr
    final sortedRituals = List.of(routine.routinesRituals)
      ..sort((a, b) => a.orderNr.compareTo(b.orderNr));

    // Calculate total duration
    final totalDuration = sortedRituals.fold(
      0,
      (sum, item) => sum + item.duration,
    );

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    routine.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      t.routines.duration(minutes: totalDuration),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    IconButton(
                      icon: const Icon(Icons.edit_note),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                RoutineEditScreen(routineId: routine.id),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            if (routine.description != null &&
                routine.description!.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                routine.description!,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: sortedRituals.map((rr) {
                return Chip(
                  label: Text("${rr.orderNr}. ${rr.ritual.title}"),
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.surfaceContainerHighest,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
