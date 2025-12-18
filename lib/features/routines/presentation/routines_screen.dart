import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';
import 'package:shaolin_planner_new/features/routines/domain/routine.dart';
import 'package:shaolin_planner_new/features/routines/domain/routine_ritual.dart';
import 'package:shaolin_planner_new/features/routines/providers/routine_provider.dart';
import 'package:shaolin_planner_new/features/routines/presentation/widgets/ritual_selection_sheet.dart';
import 'package:shaolin_planner_new/features/rituals/domain/ritual.dart';
import 'package:shaolin_planner_new/i18n/strings.g.dart';

class RoutinesScreen extends ConsumerWidget {
  const RoutinesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routinesAsync = ref.watch(routineProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.routines.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _showCreateRoutineDialog(context, ref),
          ),
        ],
      ),
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

  Future<void> _showCreateRoutineDialog(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.routines.add_title),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: t.routines.form.title_label,
              ),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: t.routines.form.description_label,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(t.common.cancel),
          ),
          FilledButton(
            onPressed: () async {
              if (titleController.text.isNotEmpty) {
                await ref
                    .read(routineProvider.notifier)
                    .createRoutine(
                      titleController.text,
                      descriptionController.text,
                    );
                if (context.mounted) {
                  Navigator.pop(context);
                }
              }
            },
            child: Text(t.routines.create_button),
          ),
        ],
      ),
    );
  }
}

class _RoutineCard extends ConsumerStatefulWidget {
  final Routine routine;

  const _RoutineCard({required this.routine});

  @override
  ConsumerState<_RoutineCard> createState() => _RoutineCardState();
}

class _RoutineCardState extends ConsumerState<_RoutineCard> {
  bool _isEditing = false;
  final ExpansionTileController _expansionController =
      ExpansionTileController();

  @override
  Widget build(BuildContext context) {
    final routine = widget.routine;
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
      child: ExpansionTile(
        controller: _expansionController,
        shape: Border.all(color: Colors.transparent),
        title: Text(
          routine.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (routine.description != null &&
                routine.description!.isNotEmpty) ...[
              Text(
                routine.description!,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 4),
            ],
            Text(
              t.routines.duration(minutes: totalDuration),
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        trailing: IconButton(
          icon: Icon(_isEditing ? Icons.check : Icons.edit),
          onPressed: () {
            setState(() {
              _isEditing = !_isEditing;
              if (_isEditing) {
                // expanding when editing starts
                _expansionController.expand();
              }
            });
          },
        ),
        children: [
          if (_isEditing)
            _buildEditMode(context, ref, sortedRituals, routine.id)
          else
            _buildViewMode(context, sortedRituals),
        ],
      ),
    );
  }

  Widget _buildViewMode(
    BuildContext context,
    List<RoutineRitual> sortedRituals,
  ) {
    if (sortedRituals.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(t.routines.no_data),
      );
    }
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: sortedRituals.length,
      separatorBuilder: (context, index) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final rr = sortedRituals[index];
        return ListTile(
          leading: CircleAvatar(
            radius: 12,
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: Text(
              "${rr.orderNr + 1}",
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
          title: Text(rr.ritual.title),
          trailing: Text(
            "${rr.duration} ${t.rituals.duration_min}", // Assuming this key exists or similar
          ),
        );
      },
    );
  }

  Widget _buildEditMode(
    BuildContext context,
    WidgetRef ref,
    List<RoutineRitual> rituals,
    String routineId,
  ) {
    return Column(
      children: [
        ReorderableListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: rituals.length,
          onReorder: (oldIndex, newIndex) {
            ref
                .read(routineProvider.notifier)
                .reorderRituals(routineId, oldIndex, newIndex);
          },
          itemBuilder: (context, index) {
            final rr = rituals[index];
            return ListTile(
              key: ValueKey(rr.ritualId),
              leading: const Icon(Icons.drag_handle),
              title: Text(rr.ritual.title),
              subtitle: InkWell(
                onTap: () => _editDuration(context, ref, rr),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.access_time, size: 16),
                    const SizedBox(width: 4),
                    Text("${rr.duration} min"),
                    const SizedBox(width: 4),
                    const Icon(Icons.edit, size: 16),
                  ],
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.remove_circle_outline,
                  color: Theme.of(context).colorScheme.error,
                ),
                onPressed: () {
                  ref
                      .read(routineProvider.notifier)
                      .removeRitual(routineId, rr.ritualId);
                },
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () => _showDeleteConfirmation(context, ref),
                icon: Icon(
                  Icons.delete_outline,
                  color: Theme.of(context).colorScheme.error,
                ),
                label: Text(
                  t.common.delete,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () => _addRitual(context, ref, routineId),
                icon: const Icon(Icons.add),
                label: Text(t.routines.add_ritual),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _showDeleteConfirmation(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.routines.delete_title),
        content: Text(t.routines.delete_confirmation),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(t.common.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
            ),
            child: Text(t.common.delete),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      final scaffoldMessenger = ScaffoldMessenger.of(context);
      await ref.read(routineProvider.notifier).deleteRoutine(widget.routine.id);

      if (context.mounted) {
        scaffoldMessenger.showSnackBar(
          SnackBar(content: Text(t.routines.delete_success)),
        );
      }
    }
  }

  Future<void> _addRitual(
    BuildContext context,
    WidgetRef ref,
    String routineId,
  ) async {
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
            child: Text(t.common.cancel),
          ),
          TextButton(
            onPressed: () {
              final val = int.tryParse(controller.text);
              Navigator.pop(context, val);
            },
            child: Text(t.common.save),
          ),
        ],
      ),
    );

    if (newDuration != null) {
      ref
          .read(routineProvider.notifier)
          .updateDuration(widget.routine.id, rr.ritualId, newDuration);
    }
  }
}
