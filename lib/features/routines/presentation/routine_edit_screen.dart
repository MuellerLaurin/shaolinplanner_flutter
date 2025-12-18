import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaolin_planner_new/features/routines/domain/routine_ritual.dart';
import 'package:shaolin_planner_new/features/routines/providers/routine_provider.dart';
import 'package:shaolin_planner_new/features/routines/presentation/widgets/ritual_selection_sheet.dart';
import 'package:shaolin_planner_new/features/rituals/domain/ritual.dart';
import 'package:shaolin_planner_new/i18n/strings.g.dart';

class RoutineEditScreen extends ConsumerWidget {
  final String routineId;

  const RoutineEditScreen({super.key, required this.routineId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routinesAsync = ref.watch(routineProvider);

    return routinesAsync.when(
      data: (routines) {
        final routineIndex = routines.indexWhere((r) => r.id == routineId);
        if (routineIndex == -1) {
          return Scaffold(
            appBar: AppBar(title: const Text('Error')),
            body: const Center(child: Text('Routine not found')),
          );
        }
        final routine = routines[routineIndex];
        // Sort explicitly by orderNr for display, though repo should handle it.
        final rituals = List<RoutineRitual>.from(routine.routinesRituals)
          ..sort((a, b) => a.orderNr.compareTo(b.orderNr));

        return Scaffold(
          appBar: AppBar(title: Text(routine.name)),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _addRitual(context, ref),
            child: const Icon(Icons.add),
          ),
          body: ReorderableListView.builder(
            itemCount: rituals.length,
            onReorder: (oldIndex, newIndex) {
              ref
                  .read(routineProvider.notifier)
                  .reorderRituals(routineId, oldIndex, newIndex);
            },
            itemBuilder: (context, index) {
              final rr = rituals[index];
              return ListTile(
                key: ValueKey(rr.ritualId), // Important for ReorderableListView
                title: Text(rr.ritual.title),
                subtitle: InkWell(
                  onTap: () => _editDuration(context, ref, rr),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.access_time, size: 16),
                      const SizedBox(width: 4),
                      Text(t.routines.duration(minutes: rr.duration)),
                      const SizedBox(width: 4),
                      const Icon(Icons.edit, size: 16),
                    ],
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  color: Theme.of(context).colorScheme.error,
                  onPressed: () {
                    ref
                        .read(routineProvider.notifier)
                        .removeRitual(routineId, rr.ritualId);
                  },
                ),
              );
            },
          ),
        );
      },
      loading: () => Scaffold(
        appBar: AppBar(),
        body: const Center(child: CircularProgressIndicator()),
      ),
      error: (e, st) => Scaffold(
        appBar: AppBar(),
        body: Center(child: Text('Error: $e')),
      ),
    );
  }

  Future<void> _addRitual(BuildContext context, WidgetRef ref) async {
    final Ritual? selected = await showModalBottomSheet<Ritual>(
      context: context,
      isScrollControlled: true,
      builder: (context) => const RitualSelectionSheet(),
    );

    if (selected != null) {
      await ref
          .read(routineProvider.notifier)
          .addRitual(routineId, selected.id);
    }
  }

  Future<void> _editDuration(
    BuildContext context,
    WidgetRef ref,
    RoutineRitual rr,
  ) async {
    final controller = TextEditingController(text: rr.duration.toString());
    final newDuration = await showDialog<int>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Duration (min)'),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Minutes'),
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(t.common.cancel), // Assuming common.cancel exists
          ),
          TextButton(
            onPressed: () {
              final val = int.tryParse(controller.text);
              Navigator.pop(context, val);
            },
            child: Text(t.common.save), // Assuming common.save exists
          ),
        ],
      ),
    );

    if (newDuration != null) {
      ref
          .read(routineProvider.notifier)
          .updateDuration(routineId, rr.ritualId, newDuration);
    }
  }
}
